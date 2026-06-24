"use client"

import { useEffect, useState } from "react"
import { useParams } from "next/navigation"
import Header from "@/components/Header"
import Footer from "@/components/Footer"
import QuantityCalculator from "@/components/QuantityCalculator"
import { supabase } from "@/lib/supabase"
import { Recipe, RecipeIngredient } from "@/lib/types"

export default function RecipeDetailPage() {
  const { id } = useParams<{ id: string }>()
  const [recipe, setRecipe] = useState<Recipe | null>(null)
  const [ingredients, setIngredients] = useState<RecipeIngredient[]>([])

  useEffect(() => {
    if (!id) return
    supabase.from("recipes").select("*").eq("id", id).single().then(({ data }) => {
      if (data) setRecipe(data)
    })
    supabase
      .from("recipe_ingredients")
      .select("*, ingredients(name_ar, name_en)")
      .eq("recipe_id", id)
      .then(({ data }) => {
        if (data) {
          setIngredients(
            data.map((ri) => ({
              ...ri,
              ingredient_name_ar: (ri as { ingredients?: { name_ar?: string } }).ingredients?.name_ar,
              ingredient_name_en: (ri as { ingredients?: { name_en?: string } }).ingredients?.name_en,
            }))
          )
        }
      })
  }, [id])

  if (!recipe) {
    return (
      <div className="flex flex-col min-h-screen">
        <Header />
        <main className="flex-1 flex items-center justify-center">
          <p className="text-gray-400">جاري التحميل...</p>
        </main>
        <Footer />
      </div>
    )
  }

  const difficultyLabel = recipe.difficulty === "easy" ? "سهل" : recipe.difficulty === "medium" ? "متوسط" : "صعب"
  const difficultyColor = recipe.difficulty === "easy" ? "bg-green-100 text-green-700" : recipe.difficulty === "medium" ? "bg-yellow-100 text-yellow-700" : "bg-red-100 text-red-700"

  return (
    <div className="flex flex-col min-h-screen">
      <Header />
      <main className="flex-1 max-w-4xl mx-auto w-full px-4 py-8">
        <div className="grid md:grid-cols-5 gap-6">
          {/* Main content */}
          <div className="md:col-span-3 space-y-6">
            <div className="bg-white rounded-2xl shadow-sm border p-6">
              <h1 className="text-2xl font-bold text-gray-900 mb-2">{recipe.title_ar}</h1>
              {recipe.description_ar && (
                <p className="text-gray-500 mb-4">{recipe.description_ar}</p>
              )}

              <div className="flex flex-wrap gap-2 mb-6">
                <span className={`text-sm px-3 py-1 rounded-full ${difficultyColor}`}>{difficultyLabel}</span>
                <span className="text-sm px-3 py-1 rounded-full bg-blue-100 text-blue-700">
                  {recipe.prep_time + recipe.cook_time} دقيقة
                </span>
                <span className="text-sm px-3 py-1 rounded-full bg-purple-100 text-purple-700">
                  {recipe.servings} أشخاص
                </span>
                <span className="text-sm px-3 py-1 rounded-full bg-orange-100 text-orange-700">
                  {recipe.cuisine === "egyptian" ? "مصري" : recipe.cuisine === "levant" ? "شامي" : recipe.cuisine === "gulf" ? "خليجي" : recipe.cuisine}
                </span>
              </div>

              <div className="mb-6">
                <h2 className="text-lg font-bold mb-3">المكونات</h2>
                <div className="space-y-2">
                  {ingredients.map((item) => (
                    <div key={item.id} className="flex items-center justify-between py-2 border-b last:border-0">
                      <span className="text-gray-700">{item.ingredient_name_ar}</span>
                      <span className="font-medium text-gray-900">
                        {item.quantity} {item.unit}
                      </span>
                    </div>
                  ))}
                </div>
              </div>

              <div>
                <h2 className="text-lg font-bold mb-3">طريقة التحضير</h2>
                <ol className="space-y-3">
                  {recipe.instructions_ar.map((step, i) => (
                    <li key={i} className="flex gap-3 text-gray-700">
                      <span className="shrink-0 w-7 h-7 rounded-full bg-primary text-white text-sm flex items-center justify-center font-bold">
                        {i + 1}
                      </span>
                      <span className="pt-1">{step}</span>
                    </li>
                  ))}
                </ol>
              </div>
            </div>
          </div>

          {/* Sidebar */}
          <div className="md:col-span-2 space-y-6">
            <QuantityCalculator recipe={recipe} ingredients={ingredients} />
          </div>
        </div>
      </main>
      <Footer />
    </div>
  )
}
