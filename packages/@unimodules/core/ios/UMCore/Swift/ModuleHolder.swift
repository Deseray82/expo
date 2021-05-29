
public class ModuleHolder {
  var module: AnyModule

  private(set) lazy var methods: [String : AnyMethod] = .init(
    uniqueKeysWithValues: module.methods().map({ ($0.name, $0) })
  )

  init(module: AnyModule) {
    self.module = module
  }

  func call(method methodName: String, args: Any, promise: Promise) {
    methods[methodName]?.call(args: args, promise: promise)
  }
}
