"use client"

import { useState } from "react"
import Header from "@/components/Header"
import Footer from "@/components/Footer"
import IngredientSelector from "@/components/IngredientSelector"
import RecipeCard from "@/components/RecipeCard"
import AIChat from "@/components/AIChat"
import { supabase } from "@/lib/supabase"
import type { Recipe } from "@/lib/types"

interface AiSuggestion {
  title_ar: string
  description_ar: string
  cuisine: string
  difficulty: string
  prep_time: number
  cook_time: number
  servings: number
  ingredients: { name_ar: string; quantity: number; unit: string }[]
  instructions_ar: string[]
}

export default function Home() {
  const [selectedIds, setSelectedIds] = useState<number[]>([])
  const [selectedNames, setSelectedNames] = useState<string[]>([])
  const [matchedRecipes, setMatchedRecipes] = useState<Recipe[]>([])
  const [aiRecipes, setAiRecipes] = useState<AiSuggestion[]>([])
  const [loading, setLoading] = useState(false)

  const toggleIngredient = (id: number, name: string) => {
    setSelectedIds((prev) =>
      prev.includes(id) ? prev.filter((i) => i !== id) : [...prev, id]
    )
    setSelectedNames((prev) =>
      prev.includes(name) ? prev.filter((n) => n !== name) : [...prev, name]
    )
  }

  const findRecipes = async () => {
    if (selectedIds.length === 0) return
    setLoading(true)
    setAiRecipes([])

    const { data: recipeIngredients } = await supabase
      .from("recipe_ingredients")
      .select("recipe_id, ingredient_id, ingredients!inner(name_ar)")
      .in("ingredient_id", selectedIds)

    if (recipeIngredients) {
      const recipeCounts: Record<number, number> = {}
      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      recipeIngredients.forEach((ri: any) => {
        recipeCounts[ri.recipe_id] = (recipeCounts[ri.recipe_id] || 0) + 1
      })

      const recipeIds = Object.keys(recipeCounts).map(Number)
      const { data: recipes } = await supabase
        .from("recipes")
        .select("*")
        .in("id", recipeIds)

      if (recipes) {
        const totalPerRecipe: Record<number, number> = {}
        const { data: all } = await supabase
          .from("recipe_ingredients")
          .select("recipe_id")
          .in("recipe_id", recipeIds)

        if (all) {
          // eslint-disable-next-line @typescript-eslint/no-explicit-any
          all.forEach((ri: any) => {
            totalPerRecipe[ri.recipe_id] = (totalPerRecipe[ri.recipe_id] || 0) + 1
          })
        }

        const matched = recipes
          .map((r) => ({
            ...r,
            match_percentage: Math.round(
              ((recipeCounts[r.id] || 0) / (totalPerRecipe[r.id] || recipeCounts[r.id])) * 100
            ),
          }))
          .sort((a, b) => b.match_percentage - a.match_percentage)

        setMatchedRecipes(matched)
      }
    }

    setLoading(false)
  }

  const suggestWithAI = async () => {
    if (selectedNames.length === 0) return
    setLoading(true)

    try {
      const res = await fetch("/api/suggest-recipes", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ ingredients: selectedNames }),
      })
      const data = await res.json()
      setAiRecipes(data.recipes || [])
    } catch {
      setAiRecipes([])
    } finally {
      setLoading(false)
    }
  }

  const hasSelection = selectedIds.length > 0

  return (
    <div className="flex flex-col min-h-screen">
      <Header />

      <main className="flex-1 max-w-6xl mx-auto w-full px-4 py-8">
        <div className="text-center mb-8">
          <h1 className="text-3xl md:text-4xl font-bold text-gray-900 mb-3">
            🍳 عندك إيه في البيت؟
          </h1>
          <p className="text-gray-500 text-lg max-w-xl mx-auto">
            اختار المكونات اللي عندك — وهنقترحلك وصفات عربية تناسبك
          </p>
        </div>

        <div className="grid md:grid-cols-3 gap-6">
          <div className="md:col-span-1">
            <IngredientSelector
              selectedIds={selectedIds}
              onToggle={toggleIngredient}
              onClear={() => { setSelectedIds([]); setSelectedNames([]); setMatchedRecipes([]); setAiRecipes([]) }}
            />

            {hasSelection && (
              <div className="flex flex-col gap-2 mt-4">
                <button
                  onClick={findRecipes}
                  disabled={loading}
                  className="w-full py-3 bg-secondary text-white rounded-xl hover:bg-secondary-dark transition font-bold disabled:opacity-50"
                >
                  {loading ? "...بحث" : "🔍 دور على وصفات"}
                </button>
                <button
                  onClick={suggestWithAI}
                  disabled={loading}
                  className="w-full py-3 bg-primary text-white rounded-xl hover:bg-primary-dark transition font-bold disabled:opacity-50"
                >
                  {loading ? "...AI" : "🤖 اقتراح AI ذكي"}
                </button>
              </div>
            )}
          </div>

          <div className="md:col-span-2 space-y-6">
            {matchedRecipes.length > 0 && (
              <div>
                <h2 className="text-xl font-bold mb-4">الوصفات المناسبة 🎯</h2>
                <div className="grid sm:grid-cols-2 gap-4">
                  {matchedRecipes.map((recipe) => (
                    <RecipeCard key={recipe.id} recipe={recipe} />
                  ))}
                </div>
              </div>
            )}

            {aiRecipes.length > 0 && (
              <div>
                <h2 className="text-xl font-bold mb-4">اقتراحات الشيف الذكي 🤖</h2>
                <div className="space-y-4">
                  {aiRecipes.map((recipe, idx) => (
                    <div key={idx} className="bg-white rounded-2xl shadow-sm border p-5 animate-fade-in">
                      <h3 className="text-lg font-bold text-gray-900 mb-1">{recipe.title_ar}</h3>
                      <p className="text-sm text-gray-500 mb-3">{recipe.description_ar}</p>

                      <div className="flex flex-wrap gap-2 mb-3">
                        <span className="text-xs px-2 py-1 rounded-full bg-orange-100 text-orange-700">{recipe.cuisine}</span>
                        <span className="text-xs px-2 py-1 rounded-full bg-blue-100 text-blue-700">{recipe.prep_time + recipe.cook_time} دقيقة</span>
                        <span className="text-xs px-2 py-1 rounded-full bg-purple-100 text-purple-700">{recipe.servings} أشخاص</span>
                      </div>

                      <div className="mb-3">
                        <p className="text-sm font-medium text-gray-700 mb-1">المكونات:</p>
                        <div className="flex flex-wrap gap-1">
                          {recipe.ingredients?.map((ing, i) => (
                            <span key={i} className="text-xs bg-gray-100 px-2 py-1 rounded-full text-gray-600">
                              {ing.quantity} {ing.unit} {ing.name_ar}
                            </span>
                          ))}
                        </div>
                      </div>

                      <div>
                        <p className="text-sm font-medium text-gray-700 mb-1">طريقة التحضير:</p>
                        <ol className="list-decimal list-inside text-sm text-gray-600 space-y-1">
                          {recipe.instructions_ar?.map((step, i) => (
                            <li key={i}>{step}</li>
                          ))}
                        </ol>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            )}

            {!hasSelection && !loading && matchedRecipes.length === 0 && (
              <div className="text-center py-20">
                <p className="text-6xl mb-4">🍽️</p>
                <p className="text-gray-400 text-lg">اختار المكونات اللي عندك في البيت</p>
                <p className="text-gray-400 text-sm">وهنقولك تقدر تعمل إيه</p>
              </div>
            )}

            {hasSelection && matchedRecipes.length === 0 && aiRecipes.length === 0 && !loading && (
              <div className="text-center py-16">
                <p className="text-4xl mb-4">🤔</p>
                <p className="text-gray-400">اضغط على &quot;دور على وصفات&quot; عشان نشوف المناسب</p>
              </div>
            )}

            <AIChat />
          </div>
        </div>
      </main>

      <Footer />
    </div>
  )
}
