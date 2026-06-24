"use client"

import { create } from "zustand"
import { Recipe, MealPlanDay, ShoppingItem } from "@/lib/types"

interface AppState {
  selectedIngredients: number[]
  selectedIngredientNames: string[]
  suggestedRecipes: Recipe[]
  mealPlan: MealPlanDay[]
  shoppingList: ShoppingItem[]
  lang: "ar" | "en"
  user: Record<string, unknown> | null

  addIngredient: (id: number, name: string) => void
  removeIngredient: (id: number) => void
  clearIngredients: () => void
  setSuggestedRecipes: (recipes: Recipe[]) => void
  setMealPlan: (days: MealPlanDay[]) => void
  setShoppingList: (items: ShoppingItem[]) => void
  setLang: (lang: "ar" | "en") => void
  setUser: (user: Record<string, unknown> | null) => void
}

export const useStore = create<AppState>((set) => ({
  selectedIngredients: [],
  selectedIngredientNames: [],
  suggestedRecipes: [],
  mealPlan: [],
  shoppingList: [],
  lang: "ar",
  user: null,

  addIngredient: (id, name) =>
    set((state) => ({
      selectedIngredients: state.selectedIngredients.includes(id)
        ? state.selectedIngredients
        : [...state.selectedIngredients, id],
      selectedIngredientNames: state.selectedIngredientNames.includes(name)
        ? state.selectedIngredientNames
        : [...state.selectedIngredientNames, name],
    })),

  removeIngredient: (id) =>
    set((state) => ({
      selectedIngredients: state.selectedIngredients.filter((i) => i !== id),
      selectedIngredientNames: state.selectedIngredientNames.filter(
        (_, idx) => state.selectedIngredients.indexOf(id) !== idx
      ),
    })),

  clearIngredients: () =>
    set({ selectedIngredients: [], selectedIngredientNames: [] }),

  setSuggestedRecipes: (recipes) => set({ suggestedRecipes: recipes }),
  setMealPlan: (days) => set({ mealPlan: days }),
  setShoppingList: (items) => set({ shoppingList: items }),
  setLang: (lang) => set({ lang }),
  setUser: (user) => set({ user }),
}))
