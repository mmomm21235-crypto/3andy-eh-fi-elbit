"use client"

import Link from "next/link"
import { Recipe } from "@/lib/types"

export default function RecipeCard({ recipe, compact }: { recipe: Recipe; compact?: boolean }) {
  const totalTime = recipe.prep_time + recipe.cook_time
  const difficultyColors: Record<string, string> = {
    easy: "bg-green-100 text-green-700",
    medium: "bg-yellow-100 text-yellow-700",
    hard: "bg-red-100 text-red-700",
  }

  return (
    <Link
      href={`/recipes/${recipe.id}`}
      className="block bg-white rounded-2xl shadow-sm border hover:shadow-md transition overflow-hidden animate-fade-in"
    >
      <div className="p-4">
        <div className="flex items-start justify-between mb-2">
          <h3 className={`font-bold text-gray-900 ${compact ? "text-sm" : "text-lg"}`}>
            {recipe.title_ar}
          </h3>
          {recipe.match_percentage !== undefined && (
            <span className={`shrink-0 text-xs font-bold px-2 py-1 rounded-full ${
              recipe.match_percentage >= 70 ? "bg-green-100 text-green-700" : "bg-yellow-100 text-yellow-700"
            }`}>
              {recipe.match_percentage}% تطابق
            </span>
          )}
        </div>

        {recipe.description_ar && !compact && (
          <p className="text-sm text-gray-500 mb-3 line-clamp-2">{recipe.description_ar}</p>
        )}

        <div className="flex flex-wrap gap-2">
          <span className={`text-xs px-2 py-1 rounded-full ${difficultyColors[recipe.difficulty] || "bg-gray-100 text-gray-600"}`}>
            {recipe.difficulty === "easy" ? "سهل" : recipe.difficulty === "medium" ? "متوسط" : "صعب"}
          </span>
          <span className="text-xs px-2 py-1 rounded-full bg-blue-100 text-blue-700">
            {totalTime} دقيقة
          </span>
          <span className="text-xs px-2 py-1 rounded-full bg-purple-100 text-purple-700">
            {recipe.servings} أشخاص
          </span>
          <span className="text-xs px-2 py-1 rounded-full bg-orange-100 text-orange-700">
            {recipe.cuisine === "egyptian" ? "مصري" : recipe.cuisine === "levant" ? "شامي" : recipe.cuisine === "gulf" ? "خليجي" : recipe.cuisine}
          </span>
        </div>
      </div>
    </Link>
  )
}
