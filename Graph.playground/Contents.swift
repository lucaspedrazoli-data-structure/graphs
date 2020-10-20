// Copyright (c) 2019 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

example(of: "Adjacency list") {
  let graph = AdjacencyList<String>()
  let singapore = graph.createVertex(data: "Singapore")
  let tokyo = graph.createVertex(data: "Tokyo")
  let hongKong = graph.createVertex(data: "Hong Kong")
  let detroit = graph.createVertex(data: "Detroit")
  let sanFrancisco = graph.createVertex(data: "San Francisco")
  let washingtonDC = graph.createVertex(data: "Washington DC")
  let austinTexas = graph.createVertex(data: "Austin Texas")

  graph.add(.undirected, from: singapore, to: hongKong, weight: 300)
  graph.add(.undirected, from: singapore, to: tokyo, weight: 500)
  graph.add(.undirected, from: hongKong, to: tokyo, weight: 250)
  graph.add(.undirected, from: tokyo, to: detroit, weight: 450)
  graph.add(.undirected, from: tokyo, to: washingtonDC, weight: 300)
  graph.add(.undirected, from: hongKong, to: sanFrancisco, weight: 600)
  graph.add(.undirected, from: detroit, to: austinTexas, weight: 50)
  graph.add(.undirected, from: austinTexas, to: washingtonDC, weight: 292)
  graph.add(.undirected, from: sanFrancisco, to: washingtonDC, weight: 337)

  print(graph)
}

example(of: "Adjacency matrix") {
  let graph = AdjacencyMatrix<String>()
  let singapore = graph.createVertex(data: "Singapore")
  let tokyo = graph.createVertex(data: "Tokyo")
  let hongKong = graph.createVertex(data: "Hong Kong")
  let detroit = graph.createVertex(data: "Detroit")
  let sanFrancisco = graph.createVertex(data: "San Francisco")
  let washingtonDC = graph.createVertex(data: "Washington DC")
  let austinTexas = graph.createVertex(data: "Austin Texas")

  graph.add(.undirected, from: singapore, to: hongKong, weight: 300)
  graph.add(.undirected, from: singapore, to: tokyo, weight: 500)
  graph.add(.undirected, from: hongKong, to: tokyo, weight: 250)
  graph.add(.undirected, from: tokyo, to: detroit, weight: 450)
  graph.add(.undirected, from: tokyo, to: washingtonDC, weight: 300)
  graph.add(.undirected, from: hongKong, to: sanFrancisco, weight: 600)
  graph.add(.undirected, from: detroit, to: austinTexas, weight: 50)
  graph.add(.undirected, from: austinTexas, to: washingtonDC, weight: 292)
  graph.add(.undirected, from: sanFrancisco, to: washingtonDC, weight: 337)

  print(graph)
}

example(of: "Breadth first search") {
  let graph = AdjacencyList<String>()
  let a = graph.createVertex(data: "A")
  let b = graph.createVertex(data: "B")
  let c = graph.createVertex(data: "C")
  let d = graph.createVertex(data: "D")
  let e = graph.createVertex(data: "E")
  let f = graph.createVertex(data: "F")
  let g = graph.createVertex(data: "G")
  let h = graph.createVertex(data: "H")

  graph.add(.undirected, from: a, to: b, weight: nil)
  graph.add(.undirected, from: a, to: c, weight: nil)
  graph.add(.undirected, from: a, to: d, weight: nil)
  graph.add(.undirected, from: b, to: e, weight: nil)
  graph.add(.undirected, from: c, to: f, weight: nil)
  graph.add(.undirected, from: c, to: g, weight: nil)
  graph.add(.undirected, from: e, to: h, weight: nil)
  graph.add(.undirected, from: e, to: f, weight: nil)
  graph.add(.undirected, from: f, to: g, weight: nil)

  let vertices = graph.breadthFirstSearch(from: a)
  vertices.forEach { vertex in
    print(vertex)
  }
}
