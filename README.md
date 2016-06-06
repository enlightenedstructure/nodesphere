# Nodesphere

## Objectives

Nodesphere is an interchange format for node networks. It has three primary objectives:

1. Create interoperability among graph visualization interfaces
2. Provide adaptors to connect these interfaces to personal data ecosystems,
including social network data, online drives, and ultimately, any public or private data
3. Abstract data storage and retrieval, allowing transitions
from traditional server & database systems toward secure, distributed public and private storage,
as these systems become practical and performant

## Philosophical

Everything we want to share is a graph, which can be seen as a group of knowledge nodes.
We think of this as a "sphere" of nodes; thus the name _nodesphere_.
Nodesphere is designed to help enable the curation, sharing, visualization, and navigation of all your graph data.

## Examples

For examples of usage in both Node.js and within a browser, see: https://github.com/nodesphere/nodesphere/tree/master/examples

You can also see example(s) running live in the browser here:
http://nodesphere.github.io/nodesphere/

These are intentionally written in simple JS directly in the page source.

## Project Genesis

Nodesphere comes from [Enlightened Structure](http://www.enlightenedstructure.net/#/) and [Superluminal ⨕ Systems](http://superluminal.is/).

Nodesphere is being developed primarily in the context of the [Core Network](https://github.com/core-network/core-network) project.

## Development

[![Build Status](https://travis-ci.org/nodesphere/nodesphere.svg?branch=master)](https://travis-ci.org/nodesphere/nodesphere)

> Nodesphere is currently pre-alpha, and things are likely to change. We don't recommend you use it in production yet.
>
> Nodesphere had a complete rewrite on a fresh branch with a new history as of v0.4.0.  The older version can be found on the [0.3.x](https://github.com/nodesphere/nodesphere/tree/0.3.x) tree.

### Architectural Notes

- Both Nodes and Edges are implemented as _maps_, or sets of key-value pairs.
- Edges have the special keys `start` and `end` which point to those respective nodes.

### In the browser

If you are creating a client side application using Nodesphere, consider using
polyfills to ensure maximum browser compatibility.
For example, include this line before all other javascript tags:

<script src="//cdn.polyfill.io/v1/polyfill.min.js"></script>

We build with Webpack.  Browserify or similar should work fine too.
