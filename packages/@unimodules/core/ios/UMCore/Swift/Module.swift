
public typealias Constants = [String : Any?]

public protocol AnyModule: AnyObject {
  var name: String { get }

  init()

  func constants() -> Constants

  func methods() -> [AnyMethod]
}

public extension AnyModule {
  var name: String {
    return String(describing: type(of: self))
  }
}

open class Module: AnyModule {
  required public init() {}

  open func constants() -> Constants {
    [:]
  }

  open func methods() -> [AnyMethod] {
    []
  }
}
