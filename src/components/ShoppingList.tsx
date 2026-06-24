"use client"

import { ShoppingItem } from "@/lib/types"

interface Props {
  items: ShoppingItem[]
}

export default function ShoppingList({ items }: Props) {
  if (items.length === 0) return null

  return (
    <div className="bg-white rounded-2xl shadow-sm border p-6">
      <h2 className="text-lg font-bold mb-4">قائمة التسوق</h2>

      <div className="space-y-2">
        {items.map((item) => (
          <div key={item.ingredient_id} className="flex items-center gap-3 py-2 border-b last:border-0">
            <input type="checkbox" className="w-4 h-4 rounded border-gray-300 text-primary focus:ring-primary" />
            <span className="flex-1 text-gray-700">{item.name_ar}</span>
            <span className="text-sm font-medium text-gray-500">
              {item.quantity} {item.unit}
            </span>
          </div>
        ))}
      </div>

      <p className="text-xs text-gray-400 mt-4">
        * قائمة التسوق تولد تلقائياً من المخطط الأسبوعي
      </p>
    </div>
  )
}
