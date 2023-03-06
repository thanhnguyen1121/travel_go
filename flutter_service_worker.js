'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "10f47751d98d310a21992fc9d6724111",
"version.json": "9866adfa6e7bd32fd681b6c1dc17e897",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/assets/images/img_trip_complete_header.png": "106ab5917b6961dff666c8bb83ebd4f0",
"assets/assets/images/img_people_avt.png": "d9bbbee4963943f9791871f3e186bf59",
"assets/assets/images/img_popular_destination_one.png": "bee884589dbcd5b67e7f0996bfba474a",
"assets/assets/images/img_best_packages_for_you_three.png": "802960afd8b48369b82c98b069657bac",
"assets/assets/images/img_popular_destination_three.png": "9547f8084ed41aed9f59e9eb7b314b84",
"assets/assets/images/img_bg_header.png": "7986b94c813d45a1334f7b0dbf6aa0d8",
"assets/assets/images/img_bg_subcribe.png": "df89cdcab4295d72c1f5abde4bf2e653",
"assets/assets/images/icon_app.png": "86459eed9e6a49341071e36c39bbada9",
"assets/assets/images/round_home_black_24dp.png": "748190094cebd735823f67fa15ba4583",
"assets/assets/images/ic_logo_splash.png": "82cff38b31d62a2a53d5f69cb7a067d9",
"assets/assets/images/img_best_packages_for_you_two.png": "8a42f752c7c51445cca0c73083daeaea",
"assets/assets/images/img_people_say_one.png": "fe31f66e86ba7bb3ad64270176d744fa",
"assets/assets/images/img_best_packages_for_you_one.png": "39e66609e9c6704b161f96973a1d3755",
"assets/assets/images/img_popular_destination_two.png": "8916ea98ecb9458bb201754afdee9a84",
"assets/assets/images/img_people_say_two.png": "d65d8addb3a8cf90ce950a12115fffcf",
"assets/assets/images/img_book_your_trip_item.png": "0f5261bcd5c8487f92a6685c7b7bd91b",
"assets/assets/images/img_our_best_service.png": "72453f20fb0018551db6eeefcbfdbcb0",
"assets/assets/images/img_location_popular_desinations.png": "b950df5c92354ec5cadcd5c509d68460",
"assets/assets/icons/ic_leaf.svg": "1cd2ec5a29f0700807b56a2a07440d74",
"assets/assets/icons/ic_apple.png": "c8deeee4614e6a5d95ade17fe55f82f1",
"assets/assets/icons/ic_building.svg": "8b2c62a44d7bf2a754fb5c5d6109edf4",
"assets/assets/icons/ic_heart.svg": "b177ad1dd55fc2c5b1d87ad7eaa0fd80",
"assets/assets/icons/ic_facebook.png": "c0e5fc035ac614051a9564420d4efd0d",
"assets/assets/icons/ic_navigate_next.svg": "6d4a5447b3b0a0a28ee99b5d37d11505",
"assets/assets/icons/ic_make_payment.svg": "3578da29df26b7adbf77b05720aec9ff",
"assets/assets/icons/ic_location.svg": "970e37d8cd47eb15346764aaf3bb9956",
"assets/assets/icons/ic_email.svg": "4283e8995e00ad15ff656ceb2fb4db6c",
"assets/assets/icons/ic_choose_destination.svg": "cf6c20f5290656769d6b5a6377927aec",
"assets/assets/icons/ic_send.svg": "7a99436f2b85244349a923dde32f33a1",
"assets/assets/icons/ic_map.svg": "0bd9f66a8874d08f095bcaa9f24777c6",
"assets/assets/icons/ic_bar_chart_outlined.svg": "8ef51128b259b143784ac814b060b35b",
"assets/assets/icons/ic_simple_calender.svg": "1918b71efcf2223eb19b6c572b860349",
"assets/assets/icons/ic_instagram.png": "b342f3ea42a8bc1a534522d8ad93acab",
"assets/assets/icons/ic_star_favorite.svg": "7e7aa2957f1eb04338d58a300f246d35",
"assets/assets/icons/ic_google_play.png": "d728d9d49ef158c51f7adb6d88a20e96",
"assets/assets/icons/ic_twitter.png": "c2d1d4abaa6e96ffd95453e8e1db1339",
"assets/assets/icons/ic_hotel_booking.svg": "e257c9b265bd0fcf2b3bb29bc1179bd8",
"assets/assets/icons/ic_tour_plan.svg": "ca2e61170fad4b16403403bcb37263d2",
"assets/assets/icons/ic_ticket_booking.svg": "3bc882f5357200487c227a3df9fb075a",
"assets/assets/icons/ic_user_profile_outline.svg": "515023a6de002b1e49f0585743774ba2",
"assets/assets/icons/ic_carbon_map.svg": "5c8a7d3642f1ff6c89e6159551ab3ba6",
"assets/assets/icons/home_black_24dp.svg": "41da89290905d3aae3ed72189b849414",
"assets/assets/icons/ic_history.svg": "a887b036a01dfaa6df5504d17fe188af",
"assets/assets/icons/ic_reach_airport_and_select_date.svg": "00f3faeaa1f44e9762bacb0f71c48739",
"assets/NOTICES": "43d2b372dc372ea203c52fa859541e9f",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/AssetManifest.json": "0feeb374cd1595ef0b84abe6a432349e",
"index.html": "ad5115e0e41d57f4d173bd310c4bc1c3",
"/": "ad5115e0e41d57f4d173bd310c4bc1c3",
"main.dart.js": "bf1cb7f91be38411a9cc75c36edcdf41",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1"
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
