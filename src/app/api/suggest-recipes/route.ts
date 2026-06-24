import { NextResponse } from "next/server"
import { GoogleGenerativeAI } from "@google/generative-ai"

const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY || "")

export async function POST(req: Request) {
  try {
    const { ingredients } = await req.json()

    if (!ingredients || ingredients.length === 0) {
      return NextResponse.json({ recipes: [] })
    }

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

    let recipes = []
    try {
      const cleaned = text.replace(/```json|```/g, "").trim()
      recipes = JSON.parse(cleaned)
    } catch {
      recipes = []
    }

    return NextResponse.json({ recipes })
  } catch {
    return NextResponse.json({ recipes: [] })
  }
}
