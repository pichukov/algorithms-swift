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

###Quick sort
Quick sort is an efficient sorting algorithm, serving as a systematic method for placing the elements of an array in order. It has `O(n*log(n))` time complexity but in worst case it has `O(n^2)`. More information you can find in [Wikipedia](https://en.wikipedia.org/wiki/Quicksort).

The file `QuickSort.swift` contains the `quickSort` function that you can simply use like this:

```swift
let array = [4, 6, 8, 1, 3, 2]
let resultArray = quickSort(array)
```

###Line segment operations
The file `LineSegment.swift` contains `lineSegmentLength` function that calculete length of line segment from one point to anothe and `distanceToLineSegment` function that calculate distance from point to the nearest point of the segment specified by two points.

You can use `lineSegmentLength` function like this:

```swift
let firstPoint = CGPoint(x: 0, y: 0)
let secondPoint = CGPoint(x: 9, y: 0)
let length = lineSegmentLength(fromFirstPoint: firstPoint, toSecondPoint: secondPoint)
```

And you can ulse `distanceToLineSegment` function like this:

```swift
let point = CGPoint(x: 3, y: 5)
let firstLinePoint = CGPoint(x: 0, y: 0)
let secondLinePoint = CGPoint(x: 9, y: 0)
let distance = distanceToLineSegment(fromPoint: point, firstLinePoint: firstLinePoint, secondLinePoint: secondLinePoint)
```

###Binary Search
Binary search is a search algorithm that finds the position of a target value within a sorted array. Binary search compares the target value to the middle element of the array; if they are unequal, the half in which the target cannot lie is eliminated and the search continues on the remaining half until it is successful or the remaining half is empty. It has `O(log(n))` time complexity. More information you can find in [Wikipedia](https://en.wikipedia.org/wiki/Binary_search_algorithm).

The file `BinarySearch.swift` contains the `binarySearch` function that you can simply use like this:

```swift
let array = [4, 6, 8, 12, 35, 278]
let resultIndex = binarySearch(array, 35)
```

>The input array must be sorted