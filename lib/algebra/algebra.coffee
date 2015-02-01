{ log, p } = require 'lightsaber'

Node = require '../core/node'
Nodesphere = require '../core/nodesphere'

class Algebra
  @multiply: (spheres) ->
    throw spheres.length unless spheres.length is 2
    [content_sphere, filter_sphere]  = spheres
    product = new Nodesphere()
    for content_node in content_sphere.nodes()
      product_node = new Node()
      product_node.add_keys content_node.get_keys()
      product.add_node product_node
      for content_key, content_weight of content_node.weights()
        for filter_node in filter_sphere.nodes()
          filter_names = filter_node.get_keys()
          for filter_key, filter_weight of filter_node.weights()
            if content_key is filter_key
              for filter_name in filter_names
                product_node.increment filter_name, content_weight * filter_weight
#                log "#{content_key} [#{filter_name}]"
    product

module.exports = Algebra