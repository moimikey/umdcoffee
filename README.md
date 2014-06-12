## Unofficial CoffeeScript Ports ([umdjs/umd](https://github.com/umdjs))

## UMD (Universal Module Definition)

This repository formalizes the design and implementation of the Universal Module Definition (UMD) API for CoffeeScript modules. These are modules which are capable of working everywhere, be it in the client, on the server or elsewhere.

The UMD pattern typically attempts to offer compatibility with the most popular script loaders of the day (e.g RequireJS amongst others). In many cases it uses [AMD](https://github.com/amdjs/amdjs-api/wiki/AMD) as a base, with special-casing added to handle [CommonJS](http://wiki.commonjs.org/wiki/CommonJS) compatibility.
