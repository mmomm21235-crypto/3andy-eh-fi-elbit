const CACHE = "3andy-eh-cache-v1"
const urlsToCache = ["/", "/recipes", "/calculator", "/meal-planner", "/shopping-list"]

// @ts-expect-error - ServiceWorker types not available
self.addEventListener("install", (event) => {
  event.waitUntil(
    caches.open(CACHE).then((cache) => cache.addAll(urlsToCache))
  )
})

// @ts-expect-error - ServiceWorker types not available
self.addEventListener("fetch", (event) => {
  event.respondWith(
    caches.match(event.request).then((cached) => cached || fetch(event.request))
  )
})
