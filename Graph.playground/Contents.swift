// Copyright (c) 2019 Razeware LLC
// For full license & permission details, see LICENSE.markdown.

//let graph = AdjacencyList<String>()
let graph = AdjacencyMatrix<String>()
let singapore = graph.createVertex(data: "Singapore")
let tokyo = graph.createVertex(data: "Tokyo")
let hongKong = graph.createVertex(data: "Hong Kong")
let detroit = graph.createVertex(data: "Detroit")
let sanFrancisco = graph.createVertex(data: "San Francisco")
let washingtonDC = graph.createVertex(data: "Washington DC")
let austinTexas = graph.createVertex(data: "Austin Texas")
let seattle = graph.createVertex(data: "Seattle")

graph.add(.undirected, from: singapore, to: hongKong, weight: 300)
graph.add(.undirected, from: singapore, to: tokyo, weight: 500)
graph.add(.undirected, from: hongKong, to: tokyo, weight: 250)
graph.add(.undirected, from: tokyo, to: detroit, weight: 450)
graph.add(.undirected, from: tokyo, to: washingtonDC, weight: 300)
graph.add(.undirected, from: hongKong, to: sanFrancisco, weight: 600)
graph.add(.undirected, from: detroit, to: austinTexas, weight: 50)
graph.add(.undirected, from: austinTexas, to: washingtonDC, weight: 292)
graph.add(.undirected, from: sanFrancisco, to: washingtonDC, weight: 337)
