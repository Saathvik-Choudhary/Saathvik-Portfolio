'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "976b7901923b04b67d0ae9e7f946fc45",
"version.json": "7eeca6600717765a4ec7c4b9a2194731",
"index.html": "512a709d594f7bf65526daa185ddc15c",
"/": "512a709d594f7bf65526daa185ddc15c",
"main.dart.js": "e47b9ff6e5d8a050d2b79b63827c675a",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"favicon.png": "e9a942e97f590b86ad272037c0aed5d9",
"icons/Icon-192.png": "b7dc3b5320ecd9f61049d2a5cff1b360",
"icons/Icon-maskable-192.png": "b7dc3b5320ecd9f61049d2a5cff1b360",
"icons/Icon-maskable-512.png": "983e7bb4010cd46225086d2a07ae7f1a",
"icons/Icon-512.png": "983e7bb4010cd46225086d2a07ae7f1a",
"manifest.json": "9846ed7783d3155c6d229ab5c2098e6d",
"assets/AssetManifest.json": "62b7dd7f892cc37c9aa5552d63364188",
"assets/NOTICES": "d48206c6dc2069effc5778606f58ac38",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "75675caa4c82bdaa254d3e8f9f42fa3f",
"assets/packages/flutter_map/lib/assets/flutter_map_logo.png": "208d63cc917af9713fc9572bd5c09362",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "7f971e17cce03cf3a457745d433a200b",
"assets/fonts/MaterialIcons-Regular.otf": "dfcf3a15af1633d4eb45b12884dc45c8",
"assets/assets/svg/figma.svg": "c7ef676648d0a63907b26420105ed20d",
"assets/assets/svg/javascript.svg": "0c1f700da144243c526f252e59362138",
"assets/assets/svg/java.svg": "459bbae2e96a2410c5b429eb941a4c11",
"assets/assets/svg/github.svg": "4b8a4845e3c03b05cc92e2b3199889d5",
"assets/assets/svg/cpp.svg": "e5b135b00998f9cd69a38eed9b1eee81",
"assets/assets/svg/x.svg": "602958e0674315e1cd989b3ac5f74567",
"assets/assets/svg/flutter.svg": "5ff1722cbed36fdb869cba0c95788d42",
"assets/assets/svg/instagram.svg": "abc08e76d2b0256d0a0c1815fc091be7",
"assets/assets/svg/python.svg": "71374043d9b3d9ea7fa09976a747d475",
"assets/assets/svg/404.svg": "a1c36d16b80c7ecbb9b36868e664644a",
"assets/assets/svg/hackerrank.svg": "0b190df020a48e0e8e84f8df5f7a8335",
"assets/assets/svg/email.svg": "99c14f8ef3bf527047167e56e5021217",
"assets/assets/svg/nodejs.svg": "b045a4be512feae9ef764cc7e5dd2bfe",
"assets/assets/svg/mongodb.svg": "9e4958f10afdff3ce934db2815e0e33e",
"assets/assets/svg/dart.svg": "11b770f163584b0e8cbba1f7bc626f55",
"assets/assets/svg/css.svg": "a55118403c13e2719d453b74dffa80f8",
"assets/assets/svg/blender.svg": "453a6aeb819125a1346f73a69cb28b41",
"assets/assets/svg/google.svg": "8cddc97baf8329135ae55c6672fc5d63",
"assets/assets/svg/linkedin.svg": "15b4281ebd93cc246c81200bc3c1fd94",
"assets/assets/svg/framer.svg": "5d0f449e36a5402b819312beea001086",
"assets/assets/svg/html.svg": "16d07e8682a531f3bc1e9fb01bd59740",
"assets/assets/svg/mysql.svg": "9a87849cee36242dc6ab7399078e0869",
"assets/assets/i.png": "601d3b98cc215a7de02f1be949c08d38",
"assets/assets/emoji/Brain.png": "1df42512fa24d0f4036d7da4d5854526",
"assets/assets/emoji/Gym.png": "5a150ea0e29632878858ca969c4ce743",
"assets/assets/emoji/Moon.png": "c0b629faae5bdead6af320a76cbe5763",
"assets/assets/emoji/Airplane.png": "1483f1f11b0100978d3188ca43a1f82b",
"assets/assets/emoji/Magnifier.png": "0121dbce702fcfbf52c2bc97d8e6babd",
"assets/assets/pfp2.png": "21dd919b44595bdbd3e771ca7eb0e8d4",
"assets/assets/ss/stopWatch.jpg": "d406b4c29098b040d43684bac289277e",
"assets/assets/ss/qrcode.jpg": "27605b7b4d2bdb35f7d700b60c44704c",
"assets/assets/ss/calc.jpg": "a5a99b612e58d79fa07bf9f498cc1586",
"assets/assets/ss/spamurai.jpg": "1e3328e1e2e4fe82baf30fab903ce20a",
"assets/assets/ss/toDo.jpg": "d8527ddfa7fb97df091be377aa6eb95c",
"assets/assets/ss/weather.jpg": "a576d932733fc3068ee5c8fa11e63bc0",
"assets/assets/ss/appleMusic.jpg": "3bfb535561d59f426bcc4d0d8ca9b84e",
"assets/assets/ss/findx.jpg": "10596dbdfd897bb4e9b19e6c72ae7fce",
"assets/assets/ss/portWeb.jpg": "b1d0c1d916aed055dcd46117da4d3aca",
"assets/assets/ss/ticTac.jpg": "541131c236f6721adebf387335a44131",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
