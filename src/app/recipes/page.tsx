"use client"

import { useEffect, useState } from "react"
import Header from "@/components/Header"
import Footer from "@/components/Footer"
import RecipeCard from "@/components/RecipeCard"
import { supabase } from "@/lib/supabase"
import { Recipe } from "@/lib/types"

export default function RecipesPage() {
  const [recipes, setRecipes] = useState<Recipe[]>([])
  const [filter, setFilter] = useState("الكل")

  useEffect(() => {
    supabase.from("recipes").select("*").order("id").then(({ data }) => {
      if (data) setRecipes(data)
    })
  }, [])

  const filtered = filter === "الكل" ? recipes : recipes.filter((r) => r.cuisine === filter)

  return (
    <div className="flex flex-col min-h-screen">
      <Header />
      <main className="flex-1 max-w-6xl mx-auto w-full px-4 py-8">
        <h1 className="text-2xl font-bold mb-6">جميع الوصفات</h1>

        <div className="flex gap-2 overflow-x-auto pb-4 mb-6">
          {["الكل", "egyptian", "levant", "gulf"].map((c) => (
            <button
              key={c}
              onClick={() => setFilter(c)}
              className={`shrink-0 px-4 py-2 rounded-xl text-sm border transition ${
                filter === c
                  ? "bg-primary text-white border-primary"
                  : "bg-white text-gray-600 border-gray-200 hover:border-primary"
              }`}
            >
              {c === "الكل" ? "الكل" : c === "egyptian" ? "مصري" : c === "levant" ? "شامي" : "خليجي"}
            </button>
          ))}
        </div>

        <div className="grid sm:grid-cols-2 lg:grid-cols-3 gap-4">
          {filtered.map((recipe) => (
            <RecipeCard key={recipe.id} recipe={recipe} />
          ))}
        </div>

        {filtered.length === 0 && (
          <p className="text-center text-gray-400 py-16">لا توجد وصفات في هذا التصنيف</p>
        )}
      </main>
      <Footer />
    </div>
  )
}
