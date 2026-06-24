"use client"

import { useState } from "react"

export default function AIChat() {
  const [question, setQuestion] = useState("")
  const [answer, setAnswer] = useState("")
  const [loading, setLoading] = useState(false)

  const askChef = async () => {
    if (!question.trim()) return
    setLoading(true)
    setAnswer("")

    try {
      const res = await fetch("/api/ask-chef", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ question }),
      })
      const data = await res.json()
      setAnswer(data.answer || "عذراً، حدث خطأ. حاول مرة أخرى.")
    } catch {
      setAnswer("عذراً، حدث خطأ في الاتصال. حاول مرة أخرى.")
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="bg-white rounded-2xl shadow-sm border p-6">
      <h2 className="text-lg font-bold mb-2">🧑‍🍳 الشيف الذكي</h2>
      <p className="text-sm text-gray-500 mb-4">اسأل أي سؤال عن الطبخ أو اقتراح وصفة</p>

      <div className="flex gap-2 mb-4">
        <input
          type="text"
          value={question}
          onChange={(e) => setQuestion(e.target.value)}
          onKeyDown={(e) => e.key === "Enter" && askChef()}
          placeholder="مثلاً: عندي فراخ وبطاطس، أعمل إيه؟"
          className="flex-1 px-4 py-2 border rounded-xl focus:outline-none focus:ring-2 focus:ring-primary"
        />
        <button
          onClick={askChef}
          disabled={loading || !question.trim()}
          className="px-6 py-2 bg-primary text-white rounded-xl hover:bg-primary-dark transition disabled:opacity-50 font-medium"
        >
          {loading ? "..." : "اسأل"}
        </button>
      </div>

      {answer && (
        <div className="bg-orange-50 border border-orange-200 rounded-xl p-4 text-sm text-gray-700 whitespace-pre-wrap">
          {answer}
        </div>
      )}
    </div>
  )
}
