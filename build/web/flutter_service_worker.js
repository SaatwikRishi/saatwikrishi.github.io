'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "4ff19a0facf68292a9f8edd46cb8c5e0",
"version.json": "426313f2f3133c2f20415344c4a22df3",
"assets/assets/images/home_background.webp": "936b03d5e95690d5b7cdf1c44da19fa7",
"assets/assets/fonts/HomeIcons.ttf": "1e51efc582f2d74d8f3d1d79cab77c9c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/AssetManifest.json": "e97a7d39ec4c6ae8a97595966250badf",
"assets/FontManifest.json": "becff8bb1e9126390533ed56ffa7af4a",
"assets/NOTICES": "bde9ee889e7cdb2c908965b81d635c52",
"manifest.json": "a83bbbd9d23ea4d752fbcd44cdc544fa",
"index.html": "0780f8c7bd9be11b01d5183f8cf7abf3",
"/": "0780f8c7bd9be11b01d5183f8cf7abf3",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
".git/hooks/applypatch-msg.sample": "4e33b997d7d5d5274c56bbf61f0c0bf9",
".git/hooks/commit-msg.sample": "89cb67435d2c1b9503e32d599d72713c",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "be48e56d8b9f9108aa4ecb32dd12d435",
".git/hooks/pre-applypatch.sample": "1f6a74774ee63312b4ad8a8c6ec7f2e8",
".git/hooks/pre-commit.sample": "3ba41bb5b6fe126be0c04c17ceb564ff",
".git/hooks/pre-merge-commit.sample": "f9d3ac247a941cf41ceb86048c699cfe",
".git/hooks/pre-push.sample": "a5a56d58c7133331b00b520ea5548074",
".git/hooks/pre-rebase.sample": "0d4f0a0a63c6a1cbbf0a8b410b9e3c59",
".git/hooks/pre-receive.sample": "c5e60ee055ef7b920a10b2871b1790a2",
".git/hooks/prepare-commit-msg.sample": "529551eb02ce07d5a84df03a8361e155",
".git/hooks/push-to-checkout.sample": "d8204d74ffd9ca215d1687eaca1e9e5b",
".git/hooks/update.sample": "edce28be0c66a0a19729dc76f8143916",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/refs/heads/master": "b9036817947f7eb6ec3c5e7a30523ca2",
".git/refs/remotes/origin/master": "b9036817947f7eb6ec3c5e7a30523ca2",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/objects/56/cb34b7f8bb9dfda46cb113ab3ed7677518d641": "e428c355ab4ee88e955cdd6288a897d4",
".git/objects/dd/566b3592a88db63ede8034377c0d90df2d3083": "77c23db17fdb282ba7078841f1e59ba3",
".git/objects/52/4fad4213059903ea81c141db742c7282e8ea68": "60521291f18270e4f8e50c6b1d3c1045",
".git/objects/1a/cb64ca867eaeaecd0d0cbe5748a574c46af9d7": "f9f6ea6cdd926a71a8a68c2731489891",
".git/objects/02/9ae82092e9aa0bba3c328d8dac6e0974587e55": "978f0dc2f09b0bbdad2b0e6045f69261",
".git/objects/88/ab1ec1351dfa198b9e72f1b72f4c16afbccb9c": "4f5a25d11aa51a95f63620ce8c922b09",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/c7/db151564cac9e3e86c66af369db4fb982d2d5c": "621759ae110c129402d8806bbb5eb82f",
".git/objects/c7/32ca197502e0dbc1e8692300c11725d64d4af8": "ba2b0f9abbc17a111cbcffe22f1aabc4",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/7b/7b3aebf6836897c5801a2158ff8afbb2262b06": "2d7723be9c0ec99da2d2402aab43fd23",
".git/objects/47/b3c5f76a8af32f6072498923bb5ba2a2f9267d": "c4c40dcd14fca7478c5bd15c4e14c568",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/66/19c1a30ee73d87e195d3018eac1619535beacb": "9ebcde50a2533c509077ebaefb86aacd",
".git/objects/fd/89e802d15da57d0afa65461fc6c367baa08d94": "472a02fe6a365e585eb1542b9f99bb7c",
".git/objects/8e/7c6ea20b1587bfa300a0b7a71d902c142fd7a9": "076d63d519af4c918c1a37da18655fa5",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/ab/377b6f27668b35ceddb2eb90acc0e0fe87ea3f": "d1fbf72176865021a363cb8066b1149d",
".git/objects/ac/4d85ad4cfd2f4732a95fbfc605d35aae4ca51f": "ae4b7d3561c28a1bcd3e0443cc19d5bf",
".git/objects/ac/56479db9ddb59ad1975ac7fe926e81af95f7b3": "d562e90ecafb32a1c761edfee5f0e9c3",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/40/2ce3fc6656cd5c3f2ee200e13f944bc82de204": "04104e81402259a9e6930578e7ebf959",
".git/objects/2e/30c9778fe7aafd305c7b81d89700b7ba4ef93d": "5ebba50b8b072ffea456902bcce43a2d",
".git/objects/7d/911e2259b84cdf1973ca2f3f52d33496594911": "6008ef8b84da5f2e3c47e3e8aa4596c8",
".git/objects/2c/294004e27e2441d1eeb0230a56f00f7b14319e": "706157fe91af4bd8d2254541772a8ae7",
".git/objects/48/fe4db6cfd1407c686adf745cce3f5468acc628": "a9f3011b9bc425acb5d24426b1728c42",
".git/objects/d3/2243e79b4363686cb4eb70bb076ed48dcaafe8": "2865e87214409f7e22acea6c026c8fdb",
".git/objects/3e/e09c523db4bb382a1cf0d9923d0512abfdb66e": "5dd6135565286b982a1a0691611a3ee4",
".git/objects/12/7b8c432718b8f2520c5b053ba49b350df5f4ad": "354add5b0ecab4f957d9dbc5dfc6d224",
".git/objects/b6/7e2a494f93ab07db7e1b5a33b85c47ba6bb8dc": "a84a3457b6b34c42539e4800caa57a6c",
".git/objects/fe/759f9419789128a42d582a5a974c825cc99cde": "fee049a5fef311f11a506005ade31092",
".git/objects/f2/338c0ccf42415e455f08963589c1e1e28b9e25": "bfe2142f0557d2db6dc8214c5f0d1bda",
".git/objects/c0/57250546de0a824f3b70df0071f8bace5bd8e1": "355af84a2f811d7038088a785c8beba3",
".git/objects/26/207be20bc5d898054e4929112dc88729a5ab86": "2a328f2eebd9e369d0d5a99373b93063",
".git/objects/ef/5baf5d1a9450eac8fbb7c85248dc247a2642ba": "749730043a1234dbc3ae2e4ffe3f6eb6",
".git/objects/2b/c629e09fe9937400aee1886ef05939ef7d8054": "2b5c9caf0dc1f41da2d42afa142bd621",
".git/objects/f0/9da48f3dca5436cf5244b4d8689af10adf3c94": "39d2b9a05ba991b7856b2ef7afbd3eba",
".git/objects/89/9a5ac4e3a79672ab7f72e7d4f5b48e3e33d11f": "dd9a0f86ef265ff55f7f5804f656ee83",
".git/objects/cd/a935496554e27632a7dfa36b7d34bb1831ebcd": "db23cef9dff69c608bc80311da82e301",
".git/objects/38/278355e08b4bb48506ea07bde4ba415c5ea09c": "c2d79546b6429619b909aeebcab0bfb2",
".git/objects/71/e827fcfd4769db07f76e9974ae8139b2c488b8": "67228a00d80d732f48081c784bf3a23b",
".git/COMMIT_EDITMSG": "d2a33790e5bf28b33cdbf61722a06989",
".git/logs/HEAD": "5a5168ec5d4c6c4eb9fa59d4e7d5e04d",
".git/logs/refs/heads/master": "5a5168ec5d4c6c4eb9fa59d4e7d5e04d",
".git/logs/refs/remotes/origin/master": "b02510dab9f01fcf0c77b4de742e758d",
".git/config": "38b3492a731b4182ea0912b1c03a8ec1",
".git/FETCH_HEAD": "babe527e98d325149cd871b8fecb79a4",
".git/index": "71f1e35b0f26166dff6a78fe5d689b8e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
