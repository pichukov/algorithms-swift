##Algorithms and math functions on `swift`
Set of algorithms or mathematical functions that can be useful in the everyday software development

###Dijkstra's algorithm
Dijkstra's algorithm is an algorithm for finding the shortest paths between nodes in a graph. More information you can find in [Wikipedia](https://en.wikipedia.org/wiki/Dijkstra's_algorithm).

The file `Dijkstra.swift` contains a class `Dijkstra` that you can use as foolows:

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

###Selection sort
Selection sort is a sorting algorithm, specifically an in-place comparison sort. It has `O(n^2)` time complexity. More information you can find in [Wikipedia](https://en.wikipedia.org/wiki/Selection_sort).

The file `SelectionSort.swift` contains the `selectionSort` function that you can simply use like this:

```swift
let array = [4, 6, 8, 1, 3, 2]
let resultArray = selectionSort(array)
```

>Input array must confirm the `Comparable` protocol

###Bubble sort
Bubble sort is a simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. It has `O(n^2)` time complexity. More information you can find in [Wikipedia](https://en.wikipedia.org/wiki/Bubble_sort).

The file `BubbleSort.swift` contains the `bubbleSort` function that you can simply use like this:

```swift
let array = [4, 6, 8, 1, 3, 2]
let resultArray = bubbleSort(array)
```

###Merge sort
Merge sort is an efficient, general-purpose, comparison-based sorting algorithm. It has `O(n*log(n))` time complexity. More information you can find in [Wikipedia](https://en.wikipedia.org/wiki/Merge_sort).

The file `MergeSort.swift` contains the `mergeSort` function that you can simply use like this:

```swift
let array = [4, 6, 8, 1, 3, 2]
let resultArray = mergeSort(array)
```