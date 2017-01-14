/**
 # Binary Search
 
 Time complexity: O(log(n))
 
 Return Int? with index of value's element (if nill then value did not found)
 
 - Parameters:
    - array: Pre-sorted array that confirm to Comparable protocol
    - value: Value to be found
 */
func binarySearch<T: Comparable>(_ array: [T], _ value: T) -> Int? {
    var startIndex = 0
    var endIndex = array.count - 1
    while startIndex <= endIndex {
        let middleIndex = (startIndex + endIndex) / 2
        if array[middleIndex] == value {
            return middleIndex
        } else if array[middleIndex] < value {
            startIndex = middleIndex + 1
        } else {
            endIndex = middleIndex - 1
        }
    }
    return nil
}