import { RecipeIngredient } from "./types"

export function calculateQuantities(
  ingredients: RecipeIngredient[],
  fromServings: number,
  toServings: number
) {
  if (fromServings === toServings) return ingredients

  const ratio = toServings / fromServings

  return ingredients.map((ing) => {
    let qty: number

    if (toServings <= 2 && ing.quantity_2 != null) {
      qty = ing.quantity_2
    } else if (toServings <= 4 && ing.quantity_4 != null) {
      qty = ing.quantity_4
    } else if (toServings <= 6 && ing.quantity_6 != null) {
      qty = ing.quantity_6
    } else {
      qty = Math.round(ing.quantity * ratio * 10) / 10
    }

    return { ...ing, quantity: qty }
  })
}
