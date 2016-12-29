/**
 # Line segment length
 
 - Parameters:
    - firstPoint: CGPoint
    - secondPoint: CGPoint
 */
func lineSegmentLength(fromFirstPoint firstPoint: CGPoint, toSecondPoint secondPoint: CGPoint) -> Double {
    return sqrt(pow(Double(secondPoint.x - firstPoint.x), 2) + pow(Double(secondPoint.y - firstPoint.y), 2))
}

/**
 # Distance to line segment
 
 Distance from point to the nearest point of the segment specified by two points
 
 - Parameters:
    - point: CGPoint
    - firstLinePoint: CGPoint
    - secondLinePoint: CGPoint
 */
func distanceToLineSegment(fromPoint point: CGPoint, firstLinePoint: CGPoint, secondLinePoint: CGPoint) -> Double {
    let segmentLength = pow(lineSegmentLength(fromFirstPoint: firstLinePoint, toSecondPoint: secondLinePoint), 2)
    guard segmentLength > 0 else {
        return lineSegmentLength(fromFirstPoint: point, toSecondPoint: firstLinePoint)
    }
    let param1 = (point.x - firstLinePoint.x) * (secondLinePoint.x - firstLinePoint.x)
    let param2 = (point.y - firstLinePoint.y) * (secondLinePoint.y - firstLinePoint.y)
    var delta = Double(param1 + param2) / segmentLength;
    delta = max(0, min(1, delta))
    let pointOnLine = CGPoint(x: Double(firstLinePoint.x) + delta * Double(secondLinePoint.x - firstLinePoint.x), y: Double(firstLinePoint.y) + delta * Double(secondLinePoint.y - firstLinePoint.y))
    return lineSegmentLength(fromFirstPoint: point, toSecondPoint: pointOnLine)
}