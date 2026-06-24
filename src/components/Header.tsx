"use client"

import Link from "next/link"
import { useState } from "react"

export default function Header() {
  const [menuOpen, setMenuOpen] = useState(false)

  return (
    <header className="bg-primary text-white shadow-lg sticky top-0 z-50">
      <div className="max-w-6xl mx-auto px-4">
        <div className="flex items-center justify-between h-16">
          <Link href="/" className="flex items-center gap-2 text-xl font-bold">
            <span className="text-2xl">🍳</span>
            <span>عندي إيه في البيت؟</span>
          </Link>

          <nav className="hidden md:flex items-center gap-6 text-sm font-medium">
            <Link href="/" className="hover:text-primary-light transition">الرئيسية</Link>
            <Link href="/recipes" className="hover:text-primary-light transition">وصفات</Link>
            <Link href="/calculator" className="hover:text-primary-light transition">حاسبة مقادير</Link>
            <Link href="/meal-planner" className="hover:text-primary-light transition">مخطط أسبوعي</Link>
          </nav>

          <button onClick={() => setMenuOpen(!menuOpen)} className="md:hidden p-2">
            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d={menuOpen ? "M6 18L18 6M6 6l12 12" : "M4 6h16M4 12h16M4 18h16"} />
            </svg>
          </button>
        </div>

        {menuOpen && (
          <nav className="md:hidden pb-4 space-y-2">
            <Link href="/" className="block py-2 px-4 hover:bg-primary-dark rounded" onClick={() => setMenuOpen(false)}>الرئيسية</Link>
            <Link href="/recipes" className="block py-2 px-4 hover:bg-primary-dark rounded" onClick={() => setMenuOpen(false)}>وصفات</Link>
            <Link href="/calculator" className="block py-2 px-4 hover:bg-primary-dark rounded" onClick={() => setMenuOpen(false)}>حاسبة مقادير</Link>
            <Link href="/meal-planner" className="block py-2 px-4 hover:bg-primary-dark rounded" onClick={() => setMenuOpen(false)}>مخطط أسبوعي</Link>
          </nav>
        )}
      </div>
    </header>
  )
}
