'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "9810ca9fc138ad2f7bf94c64cf6f0e49",
"/main.dart.js": "f36e7f394bad9bf22405f2ce4d70b4b1",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/manifest.json": "e87fe713d184cbeea1b8ae7ae443569a",
"/assets/LICENSE": "d5e242e0748806a5f7eb2065c5bbc176",
"/assets/AssetManifest.json": "6f75272d469ecc0e34a0bdafb359aa39",
"/assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/images/img_04.png": "4edc6a88f9999e901b6a129d1f32e09a",
"/assets/assets/images/img_05.png": "71a560eb655337371e3eb10fbb534ade",
"/assets/assets/images/img_02.png": "adc9418df0ab07f60e3af4f10702ee78",
"/assets/assets/images/img_03.png": "05f9ab259e029c8f8bbc668527ee3897",
"/assets/assets/images/img_01.png": "66fc672d8bef4de167fc982c0960b146"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
