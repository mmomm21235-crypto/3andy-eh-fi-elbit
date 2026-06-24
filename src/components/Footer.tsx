export default function Footer() {
  return (
    <footer className="bg-gray-800 text-gray-300 py-8 mt-auto">
      <div className="max-w-6xl mx-auto px-4 text-center">
        <p className="text-lg font-bold mb-2">🍳 عندي إيه في البيت؟</p>
        <p className="text-sm text-gray-400">اقتراح وصفات عربية بالمكونات المتاحة — مجاناً</p>
        <p className="text-xs text-gray-500 mt-4">
          جميع الوصفات مقدمة للاستخدام المنزلي | © {new Date().getFullYear()}
        </p>
      </div>
    </footer>
  )
}
