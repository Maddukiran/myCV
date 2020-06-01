'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "39c5c3d4b20befa4c22714958d82b487",
"assets/FontManifest.json": "05c172d7d67957964b79c41ff49288d6",
"assets/fonts/DancingScript-VariableFont_wght.ttf": "d3bebba97d549436fd6137d05d55ae33",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/fonts/TenaliRamakrishna-Regular.ttf": "3f0d04a2c7abbdc154d0ca0131ebe9bb",
"assets/images/background.jpg": "6d8ee113a7d1c765f2c29e23af6a39e3",
"assets/images/mypic.jpg": "52c51b24a6a4f5e398ca92e2b236039f",
"assets/LICENSE": "07cf20cfc2be4d7ddb54f3df9ca84569",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/PDFs/Pavan%2520Manikanta%2520kiran%2520maddu.pdf": "fa35ae9c0d9744a4cfdcc50142a3715b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "d1eb63acf95e046b16c6481527f61a54",
"/": "d1eb63acf95e046b16c6481527f61a54",
"main.dart.js": "46382635257b2fa166a9a6210490619a",
"manifest.json": "b88b5367f9a011d0c2ab7246093153d3"
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
        return fetch(event.request);
      })
  );
});
