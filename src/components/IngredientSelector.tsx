"use client"

import { useEffect, useState } from "react"
import { Ingredient } from "@/lib/types"
import { supabase } from "@/lib/supabase"

interface Props {
  selectedIds: number[]
  onToggle: (id: number, name: string) => void
  onClear: () => void
}

const categories = ["الكل", "خضار", "لحوم", "أسماك", "ألبان", "حبوب", "بهارات", "زيوت", "فواكه", "أخرى"]

export default function IngredientSelector({ selectedIds, onToggle, onClear }: Props) {
  const [ingredients, setIngredients] = useState<Ingredient[]>([])
  const [category, setCategory] = useState("الكل")
  const [search, setSearch] = useState("")

  useEffect(() => {
    supabase.from("ingredients").select("*").order("name_ar").then(({ data }) => {
      if (data) setIngredients(data)
    })
  }, [])

  const filtered = ingredients.filter((ing) => {
    if (category !== "الكل" && ing.category !== category) return false
    if (search && !ing.name_ar.includes(search)) return false
    return true
  })

  return (
    <div className="bg-white rounded-2xl shadow-sm border p-4">
      <div className="flex items-center justify-between mb-4">
        <h2 className="text-lg font-bold">المكونات المتاحة</h2>
        {selectedIds.length > 0 && (
          <button onClick={onClear} className="text-sm text-red-500 hover:text-red-700">
            مسح الكل ({selectedIds.length})
          </button>
        )}
      </div>

      <input
        type="text"
        placeholder="ابحث عن مكون..."
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        className="w-full px-4 py-2 border rounded-xl mb-3 focus:outline-none focus:ring-2 focus:ring-primary"
      />

      <div className="flex gap-2 overflow-x-auto pb-2 mb-3">
        {categories.map((cat) => (
          <button
            key={cat}
            onClick={() => setCategory(cat)}
            className={`shrink-0 px-3 py-1 rounded-full text-sm border transition ${
              category === cat
                ? "bg-primary text-white border-primary"
                : "bg-white text-gray-600 border-gray-200 hover:border-primary"
            }`}
          >
            {cat}
          </button>
        ))}
      </div>

      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-2 max-h-60 overflow-y-auto">
        {filtered.map((ing) => {
          const selected = selectedIds.includes(ing.id)
          return (
            <button
              key={ing.id}
              onClick={() => onToggle(ing.id, ing.name_ar)}
              className={`px-3 py-2 rounded-lg text-sm border transition text-right ${
                selected
                  ? "bg-secondary text-white border-secondary font-medium"
                  : "bg-white text-gray-700 border-gray-200 hover:border-secondary hover:bg-secondary/5"
              }`}
            >
              {ing.name_ar}
            </button>
          )
        })}
      </div>

      {filtered.length === 0 && (
        <p className="text-gray-400 text-center py-8">لا توجد مكونات في هذا التصنيف</p>
      )}
    </div>
  )
}
