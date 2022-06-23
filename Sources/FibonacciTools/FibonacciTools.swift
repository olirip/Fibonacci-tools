public struct FibonacciTools {
  var fibSeq: [Int:Int] = [1:1,2:1]
  
  public init() { }
  
  public mutating func reduceIndex(_ index: Int) -> Int{
    return min(index, 92)
  }
  public mutating func sequenceFromTheStart(_ index: Int) -> Int? {
    let n = reduceIndex(index)

    for i in 1...n {
      buildSequence(i)
    }
    return fibSeq[n]
  }
  
  private mutating func buildSequence(_ n: Int) {
    if (fibSeq[n] == nil) {
      fibSeq[n] = fibSeq[n - 1]! + fibSeq[n - 2]!
    }
  }
  
  public mutating func sequence(_ n: Int) -> Int {
    if let result = fibSeq[n] {
      return result
    } else {
      fibSeq[n] = sequence(n - 1) + sequence(n - 2)
      return fibSeq[n]!
    }
  }
}
