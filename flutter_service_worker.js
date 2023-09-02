'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"main.dart.js": "49963ae859fed140439ec86da55ef72c",
"version.json": "da38502d1193957c948ea31ee3bb8db6",
"assets/assets/pig.png": "8e556ee76e742794b03181ccb1fbe239",
"assets/assets/site_background.png": "4b6ced39abf6fa77c5919c62decb070e",
"assets/assets/me.jpeg": "ca49335483462b5f9dfce14ff1e862f1",
"assets/assets/convimg.png": "3e83c5936ee84e07fa6fcbc09c6666aa",
"assets/assets/hazirimg.png": "3e83c5936ee84e07fa6fcbc09c6666aa",
"assets/assets/passimg.png": "3e83c5936ee84e07fa6fcbc09c6666aa",
"assets/assets/git.png": "79ad14a45f047554d24d8f89c1844dd5",
"assets/assets/linkedin.png": "7547ec74ce6cf02cfa3a4e6614fa457e",
"assets/assets/linkedin2.png": "fa52c1c9de9c3d7f3314ee3b1d505fc0",
"assets/assets/linkedin3.png": "1ea5f864c526f98e806f843ed34bcf41",
"assets/assets/linked3.png": "2f4657309b4ee45643d0a87632af7760",
"assets/assets/linked.png": "a073ecdfc08870a4b033b6869c7f48fa",
"assets/assets/git2.png": "45b9baefb785085f926f60322c234f5d",
"assets/assets/git3.png": "4eab660bcc18dcaea8326998d62e481a",
"assets/fonts/Rubik.ttf": "3a46dcaae30742e20d5e84a1ee799de9",
"assets/fonts/RobotoCondensed.ttf": "70146deb50d627bc5a157f9bae044a67",
"assets/fonts/Bodoni.ttf": "371e8c3f9cfd1fa95dde1de19e6b478d",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "38b155f84397f76ac8cc03d9e8c46480",
"assets/AssetManifest.json": "600cc4d4ae30b8a3af7c9c1bd67a2f52",
"assets/FontManifest.json": "551082ebbfa9695815cb19cdd694e428",
"assets/NOTICES": "5f7b6b687c98916afaefb1fc66f2c248",
"index.html": "24e47b43297f27e1974e545c5011bd3b",
"/": "24e47b43297f27e1974e545c5011bd3b",
"manifest.json": "09a5dc465de8e243ad647b332d26df34",
"icons/Icon-192.png": "2ac3deaef551a89562d45aa6bbaee55b",
"icons/Icon-512.png": "2ac3deaef551a89562d45aa6bbaee55b",
"icons/Icon-maskable-192.png": "2ac3deaef551a89562d45aa6bbaee55b",
"icons/Icon-maskable-512.png": "2ac3deaef551a89562d45aa6bbaee55b",
"favicon.ico": "57d4707c31914ece37396fd123cee438",
"favicon.png": "2ac3deaef551a89562d45aa6bbaee55b",
"loader.css": "6035728820f471f92b6b5e7f95e01c2c"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
