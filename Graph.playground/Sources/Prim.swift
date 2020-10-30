import Foundation

class Prim<T: Hashable> {
  public typealias Graph = AdjacencyList<T>

  public init() { }

  internal func addAvailabeEdges(for vertex: Vertex<T>,
                                 in graph: Graph,
                                 check visited: Set<Vertex<T>>,
                                 to priorityQueue: inout PriorityQueue<Edge<T>> ) {
    for edge in graph.edges(from: vertex) {
      if !visited.contains(edge.destination) {
        priorityQueue.enqueue(edge)
      }
    }
  }

  public func produceMinimumSpanningTree(for graph: Graph)
    -> (cost: Double, mst: Graph) {
      var cost = 0.0
      let mst = Graph()
      var visited: Set<Vertex<T>> = []
      var priorityQueue = PriorityQueue<Edge<T>>(sort: {
        $0.weight ?? 0.0 < $1.weight ?? 0.0
      })
      mst.copyVertices(from: graph)
      guard let start = graph.vertices.first else {
        return (cost: cost, mst: mst)
      }
      visited.insert(start)
      addAvailabeEdges(for: start, in: graph,
                       check: visited, to: &priorityQueue)
      return (cost: cost, mst: mst)
  }
}
