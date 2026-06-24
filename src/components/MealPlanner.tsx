"use client"

import { useState } from "react"
import { Recipe, MealPlanDay } from "@/lib/types"

const dayNames = ["الإثنين", "الثلاثاء", "الأربعاء", "الخميس", "الجمعة", "السبت", "الأحد"]
const mealTypes = ["breakfast", "lunch", "dinner", "snack"]
const mealTypeNames: Record<string, string> = {
  breakfast: "فطور",
  lunch: "غداء",
  dinner: "عشاء",
  snack: "سناك",
}

interface Props {
  recipes: Recipe[]
  onSave: (days: MealPlanDay[]) => void
}

export default function MealPlanner({ recipes, onSave }: Props) {
  const [plan, setPlan] = useState<Record<string, number | null>>({})

  const setMeal = (dayIdx: number, type: string, recipeId: number | null) => {
    const key = `${dayIdx}-${type}`
    setPlan((prev) => ({ ...prev, [key]: recipeId }))
  }

  const handleSave = () => {
    const days: MealPlanDay[] = []
    for (const key in plan) {
      const [dayIdx, mealType] = key.split("-")
      const recipeId = plan[key]
      if (recipeId) {
        days.push({
          id: 0,
          meal_plan_id: 0,
          day_of_week: parseInt(dayIdx),
          meal_type: mealType,
          recipe_id: recipeId,
        })
      }
    }
    onSave(days)
  }

  const filledCount = Object.values(plan).filter(Boolean).length

  return (
    <div className="bg-white rounded-2xl shadow-sm border p-6">
      <div className="flex items-center justify-between mb-4">
        <h2 className="text-lg font-bold">مخطط وجبات الأسبوع</h2>
        {filledCount > 0 && (
          <span className="text-sm text-gray-500">{filledCount} وجبة</span>
        )}
      </div>

      <div className="overflow-x-auto">
        <table className="w-full text-sm">
          <thead>
            <tr>
              <th className="p-2 text-right text-gray-500 font-medium">الوجبة</th>
              {dayNames.map((day) => (
                <th key={day} className="p-2 text-center text-gray-500 font-medium">{day}</th>
              ))}
            </tr>
          </thead>
          <tbody>
            {mealTypes.map((type) => (
              <tr key={type}>
                <td className="p-2 font-medium text-gray-700">{mealTypeNames[type]}</td>
                {dayNames.map((_, dayIdx) => {
                  const key = `${dayIdx}-${type}`
                  const recipeId = plan[key]
                  return (
                    <td key={dayIdx} className="p-1">
                      <select
                        value={recipeId || ""}
                        onChange={(e) => setMeal(dayIdx, type, e.target.value ? parseInt(e.target.value) : null)}
                        className="w-full px-2 py-1.5 text-xs border rounded-lg bg-gray-50 focus:outline-none focus:ring-1 focus:ring-primary"
                      >
                        <option value="">--</option>
                        {recipes.map((r) => (
                          <option key={r.id} value={r.id}>{r.title_ar}</option>
                        ))}
                      </select>
                    </td>
                  )
                })}
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      <div className="flex justify-center mt-4">
        <button
          onClick={handleSave}
          disabled={filledCount === 0}
          className="px-6 py-2 bg-primary text-white rounded-xl hover:bg-primary-dark transition disabled:opacity-50 disabled:cursor-not-allowed font-medium"
        >
          احفظ المخطط
        </button>
      </div>
    </div>
  )
}
