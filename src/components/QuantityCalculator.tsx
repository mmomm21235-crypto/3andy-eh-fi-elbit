"use client"

import { useState } from "react"
import { Recipe, RecipeIngredient } from "@/lib/types"
import { calculateQuantities } from "@/lib/calculator"

interface Props {
  recipe: Recipe
  ingredients: RecipeIngredient[]
}

export default function QuantityCalculator({ recipe, ingredients }: Props) {
  const [servings, setServings] = useState(recipe.servings)
  const adjusted = calculateQuantities(ingredients, recipe.servings, servings)

  return (
    <div className="bg-white rounded-2xl shadow-sm border p-6">
      <h3 className="text-lg font-bold mb-4">حاسبة المقادير</h3>

      <div className="flex items-center gap-4 mb-6">
        <button
          onClick={() => setServings(Math.max(1, servings - 1))}
          className="w-10 h-10 rounded-full bg-primary text-white text-xl font-bold hover:bg-primary-dark transition"
        >
          -
        </button>
        <div className="text-center">
          <span className="text-3xl font-bold text-primary">{servings}</span>
          <p className="text-xs text-gray-500">شخص/أشخاص</p>
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
            <span className="text-gray-700">{item.ingredient_name_ar || `مكون #${item.ingredient_id}`}</span>
            <span className="font-medium text-gray-900">
              {item.quantity} {item.unit}
            </span>
          </div>
        ))}
      </div>

      <p className="text-xs text-gray-400 mt-4">
        المقادير الأصلية لـ {recipe.servings} أشخاص — تم تعديلها لـ {servings} أشخاص
      </p>
    </div>
  )
}
