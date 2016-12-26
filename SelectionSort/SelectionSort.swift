/**
 # Selection Sort
 
 Time complexity: O(n2)
 
 - Parameters:
 - array: Array of elements that confirm to Comparable protocol
 */
func selectionSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }
    var _array = array
    for i in 0..<_array.count - 1 {
        var minIndex = i
        for j in i + 1..<_array.count {
            if _array[j] < _array[minIndex] {
                minIndex = j
            }
        }
        let item = _array[i]
        _array[i] = _array[minIndex]
        _array[minIndex] = item
    }
    return _array
}