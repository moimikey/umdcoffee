# Uses Node, AMD or browser globals to create a module. This example creates
# a global even when AMD is used. This is useful if you have some scripts
# that are loaded by an AMD loader, but they still want access to globals.
# If you do not need to export a global for the AMD case,
# see returnExports.js.

# If you want something that will work in other stricter CommonJS environments,
# or if you need to create a circular dependency, see commonJsStrictGlobal.js

# Defines a module "returnExportsGlobal" that depends another module called
# "b". Note that the name of the module is implied by the file name. It is
# best if the file name and the exported global have matching names.

# If the 'b' module also uses this type of boilerplate, then
# in the browser, it will create a global .b that is used below.

do (root=this, factory=(b) ->
  # use b in some fashion.

  # Just return a value to define the module export.
  # This example returns an object, but the module
  # can return a function as the exported value.
  {}
) ->
  if typeof define is 'function' and define.amd
    # AMD. Register as an anonymous module.
    define ['b'], (b) ->
      root.returnExportsGlobal = factory(b)
  else if typeof exports is 'object'
    # Node. Does not work with strict CommonJS, but
    # only CommonJS-like environments that support module.exports,
    # like Node.
    module.exports = factory(require('b'))
  else
    # Browser globals
    root.returnExportsGlobal = factory(root.b)