"use client"

import { useState } from "react"
import Header from "@/components/Header"
import Footer from "@/components/Footer"
import ShoppingList from "@/components/ShoppingList"
import { ShoppingItem } from "@/lib/types"

export default function ShoppingListPage() {
  const [items] = useState<ShoppingItem[]>([])

  return (
    <div className="flex flex-col min-h-screen">
      <Header />
      <main className="flex-1 max-w-4xl mx-auto w-full px-4 py-8">
        <div className="text-center mb-8">
          <h1 className="text-2xl font-bold text-gray-900 mb-2">🛒 قائمة التسوق</h1>
          <p className="text-gray-500">قائمة التسوق تتولد تلقائياً من مخطط وجبات الأسبوع</p>
        </div>

        {items.length > 0 ? (
          <ShoppingList items={items} />
        ) : (
          <div className="text-center py-20 bg-white rounded-2xl shadow-sm border">
            <p className="text-5xl mb-4">🛍️</p>
            <p className="text-gray-400 text-lg">قائمة التسوق فاضية</p>
            <p className="text-gray-400 text-sm">روح لمخطط الأسبوع وخطط وجباتك الأول</p>
            <a
              href="/meal-planner"
              className="inline-block mt-4 px-6 py-2 bg-primary text-white rounded-xl hover:bg-primary-dark transition font-medium"
            >
              اذهب لمخطط الأسبوع
            </a>
          </div>
        )}
      </main>
      <Footer />
    </div>
  )
}
