{json, p} = require 'lightsaber/lib/log'

Node = require './node'

class Edge extends Node

  constructor: ({ @start, @end, data }) ->
    throw new Error "start must be of type Node, got #{json @start}" unless @start instanceof Node
    throw new Error "end must be of type Node, got #{json @end}" unless @end instanceof Node
    throw new Error "Missing start [ID: #{@start?.id()}] and/or end [ID: #{@end?.id()}] in 'args' " unless @start? and @end?
    @attrs = data
    @setKey @attrs

  id: -> @_id

  data: ->
    map = {
      start: @start.data()
      end: @end.data()
    }
    map.data = @attrs if @attrs
    map

module.exports = Edge
