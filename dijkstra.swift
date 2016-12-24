class Dijkstra {
    private let _numOfVertices: Int
    private var _adjMatrix: [[Double]]
    private var _predecessor: [Int] = []
    private var _distance: [Double] = []
    private var _mark: [Bool] = []
    private var _source: Int
    
    init(nodeCount: Int, graph: [[Double]], sourceNodeIndex: Int) {
        _numOfVertices = nodeCount
        _adjMatrix = graph
        _source = sourceNodeIndex
        calculateRoute()
    }
    
    func path(toNode node: Int) -> [Int] {
        return calculatePath(toNode: node).reversed()
    }
    
    private func calculatePath(toNode node: Int) -> [Int] {
        guard _predecessor.count > node, node != _source && _predecessor[node] != -1 else {
            return []
        }
        var path: [Int] = []
        path += [_predecessor[node]]
        path += calculatePath(toNode: _predecessor[node])
        return path
    }
    
    private func initValues() {
        for _ in 0 ..< _numOfVertices {
            _mark.append(false)
            _predecessor.append(-1)
            _distance.append(Double.infinity)
        }
        _distance[_source] = 0
    }
    
    private func getClosestUnmarkedNode() -> Int {
        var minDistance = Double.infinity
        var closestUnmarkedNode: Int = 0
        
        for i in 0 ..< _numOfVertices {
            if !_mark[i] && minDistance >= _distance[i] {
                minDistance = _distance[i]
                closestUnmarkedNode = i
            }
        }
        return closestUnmarkedNode
    }
    
    private func calculateRoute() {
        initValues()
        var closestUnmarkedNode: Int = 0
        
        for _ in 0 ..< _numOfVertices {
            closestUnmarkedNode = getClosestUnmarkedNode()
            _mark[closestUnmarkedNode] = true
            for i in 0 ..< _numOfVertices {
                if !_mark[i] && _adjMatrix[closestUnmarkedNode][i] > 0 {
                    if _distance[i] > _distance[closestUnmarkedNode] + _adjMatrix[closestUnmarkedNode][i] {
                        _distance[i] = _distance[closestUnmarkedNode] + _adjMatrix[closestUnmarkedNode][i]
                        _predecessor[i] = closestUnmarkedNode
                    }
                }
            }
        }
    }
}
