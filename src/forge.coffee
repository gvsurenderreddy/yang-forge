# forge - load and build cores

console.debug ?= console.log if process.env.yang_debug?

Engine = require './engine'

class Forge extends Engine

  sign: (cname, opts={}) ->
  publish: (cname, opts={}) ->


  # TBD
  # export: (input=this) ->
  #   console.assert input instanceof Object, "invalid input to export module"
  #   console.assert typeof input.name is 'string' and !!input.name,
  #     "need to pass in 'name' of the module to export"
  #   format = input.format ? 'json'
  #   m = switch
  #     when (synth.instanceof input) then input
  #     else @resolve 'module', input.name
  #   console.assert (synth.instanceof m),
  #     "unable to retrieve requested module #{input.name} for export"

  #   obj = m.extract 'name', 'schema', 'map', 'extensions', 'importers', 'exporters', 'procedures'
  #   for key in [ 'extensions', 'importers', 'procedures' ]
  #     obj[key]?.toJSON = ->
  #       @[k] = tosource v for k, v of this when k isnt 'toJSON' and v instanceof Function
  #       this

  #   return switch format
  #     when 'json' then JSON.stringify obj

#
# declare exports
#
exports = module.exports = new Forge
exports.Engine = Engine # for making new Engines
