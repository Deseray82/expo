
import Foundation

@objc
public protocol ModulesProviderObjCProtocol {}

public protocol ModulesProviderProtocol: ModulesProviderObjCProtocol {
  func exportedModules() -> [AnyModule.Type]
}

@objc
open class ModulesProvider: NSObject, ModulesProviderProtocol, ModulesProviderObjCProtocol {
  open func exportedModules() -> [AnyModule.Type] {
    return []
  }
}
