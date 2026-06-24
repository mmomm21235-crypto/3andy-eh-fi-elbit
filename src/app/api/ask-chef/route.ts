import { NextResponse } from "next/server"
import { GoogleGenerativeAI } from "@google/generative-ai"

const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY || "")

export async function POST(req: Request) {
  try {
    const { question } = await req.json()
    const model = genAI.getGenerativeModel({ model: "gemini-2.0-flash" })

    const prompt = `أنت شيف عربي خبير ومتخصص في المطبخ المصري والعربي. أجب على سؤال المستخدم بطريقة ودية ومفيدة:\n\n${question}`

    const result = await model.generateContent(prompt)
    const answer = result.response.text()

    return NextResponse.json({ answer })
  } catch {
    return NextResponse.json({ answer: "عذراً، حدث خطأ. حاول مرة أخرى." })
  }
}
