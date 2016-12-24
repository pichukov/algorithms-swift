##Algorithms and math functions on `swift`
Set of algorithms or mathematical functions that can be useful in the everyday software development

###Dijkstra's algorithm
Dijkstra's algorithm is an algorithm for finding the shortest paths between nodes in a graph. More information you can find in [Wikipedia](https://en.wikipedia.org/wiki/Dijkstra's_algorithm).

The file `dijkstra.swift` contains a class `Dijkstra` that you can use as foolows:

```swift
let matrix: [[Double]] = [
    [0, 4, 1, 3],
    [4, 0, 1, 0],
    [1, 1, 0, 0],
    [3, 0, 0, 0]
]
let dijkstra = Dijkstra(nodeCount: 4, adjacencyMatrix: matrix, sourceNodeIndex: 1)
let path = dijkstra.path(toNode: 3)
```

>`matrix` is adjacency matrix for the graph that will be finding a way
