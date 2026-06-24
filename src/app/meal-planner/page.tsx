"use client"

import { useEffect, useState } from "react"
import Header from "@/components/Header"
import Footer from "@/components/Footer"
import MealPlanner from "@/components/MealPlanner"
import ShoppingList from "@/components/ShoppingList"
import { supabase } from "@/lib/supabase"
import { Recipe, ShoppingItem } from "@/lib/types"

export default function MealPlannerPage() {
  const [recipes, setRecipes] = useState<Recipe[]>([])
  const [shoppingItems, setShoppingItems] = useState<ShoppingItem[]>([])

  useEffect(() => {
    supabase.from("recipes").select("*").order("id").then(({ data }) => {
      if (data) setRecipes(data)
    })
  }, [])

  const handleSaveMealPlan = async (days: { recipe_id: number }[]) => {
    const itemMap = new Map<string, ShoppingItem>()

    for (const day of days) {
      const { data: ings } = await supabase
        .from("recipe_ingredients")
        .select("ingredient_id, quantity, unit, ingredients(name_ar)")
        .eq("recipe_id", day.recipe_id)

      if (ings) {
        ings.forEach((ri) => {
          const riData = ri as { ingredient_id: number; quantity: number; unit: string; ingredients?: { name_ar?: string } }
          const name = riData.ingredients?.name_ar || ""
          if (itemMap.has(name)) {
            itemMap.get(name)!.quantity += riData.quantity
            itemMap.get(name)!.from_recipes.push("")
          } else {
            itemMap.set(name, {
              ingredient_id: riData.ingredient_id,
              name_ar: name,
              quantity: riData.quantity,
              unit: riData.unit,
              from_recipes: [],
            })
          }
        })
      }
    }

    setShoppingItems(Array.from(itemMap.values()))
  }

  return (
    <div className="flex flex-col min-h-screen">
      <Header />
      <main className="flex-1 max-w-6xl mx-auto w-full px-4 py-8">
        <div className="text-center mb-8">
          <h1 className="text-2xl font-bold text-gray-900 mb-2">📅 مخطط وجبات الأسبوع</h1>
          <p className="text-gray-500">خطط لوجبات أسبوعك وولّد قائمة تسوق ذكية</p>
        </div>

        <div className="space-y-6">
          <MealPlanner recipes={recipes} onSave={handleSaveMealPlan} />
          {shoppingItems.length > 0 && <ShoppingList items={shoppingItems} />}
        </div>
      </main>
      <Footer />
    </div>
  )
}
