/**
 # Bubble Sort
 
 Time complexity: O(n^2)
 
 - Parameters:
 - array: Array of elements that confirm to Comparable protocol
 */
func bubbleSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }
    var _array = array
    for i in 0..<_array.count {
        var noSwap = true
        for j in 1..<_array.count - i {
            if _array[j - 1] > _array[j] {
                noSwap = false
                let item = _array[j]
                _array[j] = _array[j - 1]
                _array[j - 1] = item
            }
        }
        if noSwap {
            break
        }
    }
    return _array
}
