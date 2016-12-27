/**
 # Merge Sort
 
 Time complexity: O(n*log(n))
 
 - Parameters:
    - array: Array of elements that confirm to Comparable protocol
 */
func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }
    let separateIndex = array.count / 2
    var leftSide = mergeSort(Array<T>(array[0..<separateIndex]))
    var rightSide = mergeSort(Array<T>(array[separateIndex..<array.count]))
    
    var resultArray: [T] = []
    while leftSide.count > 0 && rightSide.count > 0 {
        if leftSide.first! <= rightSide.first! {
            resultArray.append(leftSide.first!)
            leftSide.removeFirst()
        } else {
            resultArray.append(rightSide.first!)
            rightSide.removeFirst()
        }
    }
    if leftSide.count > 0 {
        resultArray += leftSide
    }
    if rightSide.count > 0 {
        resultArray += rightSide
    }
    return resultArray
}