"use client"

import { useEffect, useState } from "react"
import Header from "@/components/Header"
import Footer from "@/components/Footer"
import { supabase } from "@/lib/supabase"
import { Recipe, RecipeIngredient } from "@/lib/types"
import { calculateQuantities } from "@/lib/calculator"

export default function CalculatorPage() {
  const [recipes, setRecipes] = useState<Recipe[]>([])
  const [selectedId, setSelectedId] = useState<number | null>(null)
  const [ingredients, setIngredients] = useState<RecipeIngredient[]>([])
  const [servings, setServings] = useState(4)

  useEffect(() => {
    supabase.from("recipes").select("*").order("id").then(({ data }) => {
      if (data) setRecipes(data)
    })
  }, [])

  const selectRecipe = async (id: number) => {
    setSelectedId(id)
    setServings(4)
    const { data: recipe } = await supabase.from("recipes").select("*").eq("id", id).single()
    if (recipe) setServings(recipe.servings || 4)

    const { data: ings } = await supabase
      .from("recipe_ingredients")
      .select("*, ingredients(name_ar)")
      .eq("recipe_id", id)

    if (ings) {
      setIngredients(
        ings.map((ri) => ({
          ...ri,
          ingredient_name_ar: (ri as { ingredients?: { name_ar?: string } }).ingredients?.name_ar,
        }))
      )
    }
  }

  const recipe = recipes.find((r) => r.id === selectedId)
  const adjusted = recipe ? calculateQuantities(ingredients, recipe.servings || 4, servings) : []

  return (
    <div className="flex flex-col min-h-screen">
      <Header />
      <main className="flex-1 max-w-4xl mx-auto w-full px-4 py-8">
        <div className="text-center mb-8">
          <h1 className="text-2xl font-bold text-gray-900 mb-2">🧮 حاسبة مقادير الأكل</h1>
          <p className="text-gray-500">اختار وصفة وعدد الأشخاص — هنحسبلك المقادير بالضبط</p>
        </div>

        <div className="grid md:grid-cols-2 gap-6">
          <div className="bg-white rounded-2xl shadow-sm border p-6">
            <h2 className="text-lg font-bold mb-4">اختر وصفة</h2>

            <div className="space-y-2 max-h-80 overflow-y-auto">
              {recipes.map((r) => (
                <button
                  key={r.id}
                  onClick={() => selectRecipe(r.id)}
                  className={`w-full text-right px-4 py-3 rounded-xl border transition ${
                    selectedId === r.id
                      ? "bg-primary text-white border-primary"
                      : "bg-white text-gray-700 border-gray-200 hover:border-primary"
                  }`}
                >
                  <span className="font-medium">{r.title_ar}</span>
                  <span className="block text-xs opacity-70">
                    {r.servings} أشخاص | {r.prep_time + r.cook_time} دقيقة
                  </span>
                </button>
              ))}
            </div>
          </div>

          {recipe && (
            <div className="bg-white rounded-2xl shadow-sm border p-6">
              <h2 className="text-lg font-bold mb-4">{recipe.title_ar}</h2>

              <div className="flex items-center justify-center gap-4 mb-6">
                <button
                  onClick={() => setServings(Math.max(1, servings - 1))}
                  className="w-10 h-10 rounded-full bg-primary text-white text-xl font-bold hover:bg-primary-dark transition"
                >
                  -
                </button>
                <div className="text-center">
                  <span className="text-3xl font-bold text-primary">{servings}</span>
                  <p className="text-xs text-gray-500">شخص</p>
                </div>
                <button
                  onClick={() => setServings(Math.min(20, servings + 1))}
                  className="w-10 h-10 rounded-full bg-primary text-white text-xl font-bold hover:bg-primary-dark transition"
                >
                  +
                </button>
              </div>

              <div className="space-y-2">
                {adjusted.map((item) => (
                  <div key={item.id} className="flex items-center justify-between py-2 border-b last:border-0">
                    <span className="text-gray-700">{item.ingredient_name_ar}</span>
                    <span className="font-bold text-primary">
                      {item.quantity} {item.unit}
                    </span>
                  </div>
                ))}
              </div>
            </div>
          )}

          {!recipe && (
            <div className="flex items-center justify-center bg-white rounded-2xl shadow-sm border p-6">
              <p className="text-gray-400 text-center">اختار وصفة من اليسار عشان تشوف المقادير</p>
            </div>
          )}
        </div>
      </main>
      <Footer />
    </div>
  )
}
