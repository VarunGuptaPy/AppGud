'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"version.json": "eca503b72cbf07ecbe738a62d3518677",
"manifest.json": "a07a795b3950b386b110ef4aa66b4d2d",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"index.html": "454be7aaf56971898a038663a8c8edbd",
"/": "454be7aaf56971898a038663a8c8edbd",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "187f02dd09858d1f3401df8bab54ae09",
"assets/AssetManifest.bin": "df62fa70a07c2106d348a40b08854b93",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "2706e7eb96f495143f1e39cb82aab642",
"assets/FontManifest.json": "a752d85edb3f6ea8452504679dbe9785",
"assets/fonts/NotoSerif-Regular.ttf": "811988e53e8c4aba75a5d2ce60bb362b",
"assets/fonts/NotoSerif-Bold.ttf": "eb8a8ba64d03bf76bc188d2e22ff9211",
"assets/fonts/MaterialIcons-Regular.otf": "74ac63364a5b8dbac048605d32da102c",
"assets/AssetManifest.bin.json": "905d4093d5a20f9fe1350c8f0045938a",
"assets/NOTICES": "69e59e5f3bcddbdcc590e8fba5b9b30a",
"assets/assets/innovation_icon.png": "0334735db7f357dbb4a6106fb05f0431",
"assets/assets/RealState.png": "55a4184399cd7fd471ef786e57b66456",
"assets/assets/BottomVector2.png": "75323aacfe60507726bb838813a1ccd3",
"assets/assets/HealthTech.png": "df75d72a34922543c9eee92b76384386",
"assets/assets/star.png": "6577dc938d8d525fc0be8be954218792",
"assets/assets/Design_Graphic.png": "f2331303215b4bbf775ed0b8664c312e",
"assets/assets/techStack_mobile.png": "cb1cb2143b1b51d004907ba50c9f19dd",
"assets/assets/Ecommerc.png": "8ee7c4cce8e8aa1b6b38884c21e28df0",
"assets/assets/linkedin.png": "58c7dee1d924f7303fec5c6189632814",
"assets/assets/Brand_Graphic.png": "cb950b3b175eaf0ec2c2773dd8ac95d0",
"assets/assets/deployment.png": "67a826aedf5bf537c5096385b0cce3b5",
"assets/assets/aboutUsImage1.png": "d9ae9392cffd46ccce4f30999d9293a9",
"assets/assets/design_icon.png": "7c5ac45fbe3056ec3d78af3b41825214",
"assets/assets/Entertainment.png": "363f8364d81a881eb8c4a24ab0d79223",
"assets/assets/EdTech.png": "a659c9e9a8332d34d9a16aa1f1970900",
"assets/assets/topVector2.png": "e3a2fe923f981215a607502be1c4d7d3",
"assets/assets/DDB_Logo.png": "6dba194ef0ad8abe5d67478340029129",
"assets/assets/topVector1.png": "18febac08bbe53e94f260047bb984da6",
"assets/assets/facebookIcon.png": "c6c76bb8429219f19d092eafbe73f409",
"assets/assets/Develop_graphic.png": "bb0ea40f4df78710d7c53bf01a00a2e8",
"assets/assets/getInTouchShape.png": "2f34453af83b855eb6bdfae7a8595594",
"assets/assets/aboutUsImage2.png": "b6e2d9c244e37a88fd8a66f9df0a686d",
"assets/assets/techStack1.png": "2682247356b48cc7b76176c8fa59b842",
"assets/assets/tedhStack2.png": "307260e8b51baac5f39763762e520f27",
"assets/assets/Fintech.png": "0bf271b5cf78c617bdf3d364dfedf3ba",
"assets/assets/instagram_icon.png": "70402aacd53f60b6fa7f127bd425aa74",
"assets/assets/Development_icon.png": "fc6295e2e0d8787b709feb3bfdbb89a3",
"assets/assets/plan_icon.png": "496bca11dc13a86a44b18c38a8cefead",
"assets/assets/support_icon.png": "6d0e3c9a2bf80e9a2f83b339c8399011",
"assets/assets/desk.png": "8cee8b8c8073a6129350d708c468de08",
"assets/assets/BoottomVector1.png": "7f6d1475f60a88d9c0168ff8f4f13736",
"assets/assets/techStack3.png": "704a18e2d50fad1abe4e2842fe99dfc3"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
