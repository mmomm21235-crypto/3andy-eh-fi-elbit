export interface Ingredient {
  id: number
  name_ar: string
  name_en: string | null
  category: string
  unit: string
}

export interface Recipe {
  id: number
  title_ar: string
  title_en: string | null
  description_ar: string | null
  description_en: string | null
  cuisine: string
  difficulty: string
  prep_time: number
  cook_time: number
  servings: number
  instructions_ar: string[]
  instructions_en: string[] | null
  image_url: string | null
  is_ai_generated: boolean
  match_percentage?: number
  ingredients?: RecipeIngredient[]
}

export interface RecipeIngredient {
  id: number
  recipe_id: number
  ingredient_id: number
  quantity: number
  unit: string
  quantity_2: number | null
  quantity_4: number | null
  quantity_6: number | null
  is_optional: boolean
  ingredient_name_ar?: string
  ingredient_name_en?: string
}

export interface MealPlan {
  id: number
  user_id: string
  week_start: string
  days: MealPlanDay[]
}

export interface MealPlanDay {
  id: number
  meal_plan_id: number
  day_of_week: number
  meal_type: string
  recipe_id: number
  recipe?: Recipe
}

export interface ShoppingItem {
  ingredient_id: number
  name_ar: string
  quantity: number
  unit: string
  from_recipes: string[]
}
