"use server"

import { GoogleGenerativeAI } from "@google/generative-ai"

const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY || "")

export async function suggestRecipes(ingredients: string[]) {
  const model = genAI.getGenerativeModel({ model: "gemini-2.0-flash" })

  const prompt = `أنت شيف عربي محترف. عندي هذه المكونات: ${ingredients.join(", ")}.
اقترح لي 3 وصفات عربية مناسبة باستخدام أكبر قدر ممكن من هذه المكونات.
للأسف مش عندي مكونات تانية غير اللي كتبتها.

أرجو الرد بهذا التنسيق JSON فقط بدون أي كلام إضافي:
[
  {
    "title_ar": "اسم الوصفة",
    "description_ar": "وصف قصير",
    "cuisine": "مصري / شامي / خليجي / عام",
    "difficulty": "easy / medium / hard",
    "prep_time": 15,
    "cook_time": 30,
    "servings": 4,
    "ingredients": [
      { "name_ar": "اسم المكون", "quantity": 2, "unit": "كوب" }
    ],
    "instructions_ar": ["خطوة 1", "خطوة 2"]
  }
]`

  const result = await model.generateContent(prompt)
  const text = result.response.text()

  try {
    const cleaned = text.replace(/```json|```/g, "").trim()
    return JSON.parse(cleaned)
  } catch {
    return null
  }
}

export async function askChef(question: string) {
  const model = genAI.getGenerativeModel({ model: "gemini-2.0-flash" })

  const prompt = `أنت شيف عربي خبير. أجب على سؤال المستخدم بطريقة ودية ومفيدة:\n\n${question}`

  const result = await model.generateContent(prompt)
  return result.response.text()
}
