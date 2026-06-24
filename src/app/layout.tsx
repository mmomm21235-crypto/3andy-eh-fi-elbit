import type { Metadata, Viewport } from "next"
import "./globals.css"

export const dynamic = "force-dynamic"

export const metadata: Metadata = {
  title: "عندي إيه في البيت؟",
  description: "اقتراح وصفات عربية بالمكونات المتاحة + حاسبة مقادير + مخطط وجبات أسبوعي",
  manifest: "/manifest.json",
  appleWebApp: { capable: true, statusBarStyle: "default", title: "عندي إيه" },
}

export const viewport: Viewport = {
  themeColor: "#ea580c",
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="ar" dir="rtl">
      <head>
        <link rel="apple-touch-icon" href="/icons/icon-192.svg" />
        <script dangerouslySetInnerHTML={{
          __html: `if('serviceWorker' in navigator) { window.addEventListener('load', () => navigator.serviceWorker.register('/sw.js')); }`
        }} />
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX" />
        <script dangerouslySetInnerHTML={{
          __html: `window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'G-XXXXXXXXXX');`
        }} />
      </head>
      <body className="min-h-screen bg-cream text-gray-800 font-sans antialiased">
        {children}
      </body>
    </html>
  )
}
