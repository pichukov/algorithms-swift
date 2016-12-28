/**
 # Quick Sort
 
 Time complexity: O(n*log(n))
 
 - Parameters:
 - array: Array of elements that confirm to Comparable protocol
 */
func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }
    let separateElement = array[array.count / 2]
    let leftSide = array.filter { $0 < separateElement }
    let center = array.filter { $0 == separateElement }
    let rightSide = array.filter { $0 > separateElement }
    return quickSort(leftSide) + center + quickSort(rightSide)
}