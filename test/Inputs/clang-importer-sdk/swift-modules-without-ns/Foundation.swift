@_exported import ObjectiveC
@_exported import CoreGraphics
@_exported import Foundation

@_silgen_name("swift_StringToNSString") internal
func _convertStringToNSString(_ string: String) -> NSString

@_silgen_name("swift_NSStringToString") internal
func _convertNSStringToString(_ nsstring: NSString?) -> String

public func == (lhs: Object, rhs: Object) -> Bool {
  return lhs.isEqual(rhs)
}

public let utf88StringEncoding: UInt = 8

// NSArray bridging entry points
func _convertNSArrayToArray<T>(_ nsarr: NSArray?) -> [T] {
  return [T]()
}

func _convertArrayToNSArray<T>(_ arr: [T]) -> NSArray {
  return NSArray()
}

// NSDictionary bridging entry points
internal func _convertDictionaryToNSDictionary<Key, Value>(
    _ d: Dictionary<Key, Value>
) -> NSDictionary {
  return NSDictionary()
}

internal func _convertNSDictionaryToDictionary<K: Object, V: AnyObject>(
       _ d: NSDictionary?
     ) -> Dictionary<K, V> {
  return Dictionary<K, V>()
}

// NSSet bridging entry points
internal func _convertSetToNSSet<T : Hashable>(_ s: Set<T>) -> NSSet {
  return NSSet()
}

internal func _convertNSSetToSet<T : Hashable>(_ s: NSSet?) -> Set<T> {
  return Set<T>()
}

extension String : _ObjectiveCBridgeable {
  public static func _isBridgedToObjectiveC() -> Bool {
    return true
  }
  
  public func _bridgeToObjectiveC() -> NSString {
    return NSString()
  }
  public static func _forceBridgeFromObjectiveC(_ x: NSString,
                                                result: inout String?) {
  }
  public static func _conditionallyBridgeFromObjectiveC(
    _ x: NSString,
    result: inout String?
  ) -> Bool {
    return true
  }
  public static func _unconditionallyBridgeFromObjectiveC(
    _ x: NSString?
  ) -> String {
    return String()
  }
}

extension Int : _ObjectiveCBridgeable {
  public static func _isBridgedToObjectiveC() -> Bool {
    return true
  }
  
  public func _bridgeToObjectiveC() -> Number {
    return Number()
  }
  public static func _forceBridgeFromObjectiveC(
    _ x: Number,
    result: inout Int?
  ) {
  }
  public static func _conditionallyBridgeFromObjectiveC(
    _ x: Number,
    result: inout Int?
  ) -> Bool {
    return true
  }
  public static func _unconditionallyBridgeFromObjectiveC(
    _ x: Number?
  ) -> Int {
    return Int()
  }
}

extension Array : _ObjectiveCBridgeable {
  public static func _isBridgedToObjectiveC() -> Bool {
    return true
  }
  
  public func _bridgeToObjectiveC() -> NSArray {
    return NSArray()
  }
  public static func _forceBridgeFromObjectiveC(
    _ x: NSArray,
    result: inout Array?
  ) {
  }
  public static func _conditionallyBridgeFromObjectiveC(
    _ x: NSArray,
    result: inout Array?
  ) -> Bool {
    return true
  }
  public static func _unconditionallyBridgeFromObjectiveC(
    _ x: NSArray?
  ) -> Array {
    return Array()
  }
}

extension Dictionary : _ObjectiveCBridgeable {
  public static func _isBridgedToObjectiveC() -> Bool {
    return true
  }
  
  public func _bridgeToObjectiveC() -> NSDictionary {
    return NSDictionary()
  }
  public static func _forceBridgeFromObjectiveC(
    _ x: NSDictionary,
    result: inout Dictionary?
  ) {
  }
  public static func _conditionallyBridgeFromObjectiveC(
    _ x: NSDictionary,
    result: inout Dictionary?
  ) -> Bool {
    return true
  }
  public static func _unconditionallyBridgeFromObjectiveC(
    _ x: NSDictionary?
  ) -> Dictionary {
    return Dictionary()
  }
}

extension Set : _ObjectiveCBridgeable {
  public static func _isBridgedToObjectiveC() -> Bool {
    return true
  }

  public func _bridgeToObjectiveC() -> NSSet {
    return NSSet()
  }
  public static func _forceBridgeFromObjectiveC(
    _ x: NSSet,
    result: inout Set?
  ) {
  }
  public static func _conditionallyBridgeFromObjectiveC(
    _ x: NSSet,
    result: inout Set?
  ) -> Bool {
    return true
  }
  public static func _unconditionallyBridgeFromObjectiveC(
    _ x: NSSet?
  ) -> Set {
    return Set()
  }
}

extension CGFloat : _ObjectiveCBridgeable {
  public static func _isBridgedToObjectiveC() -> Bool {
    return true
  }
  
  public func _bridgeToObjectiveC() -> Number {
    return Number()
  }
  public static func _forceBridgeFromObjectiveC(
    _ x: Number,
    result: inout CGFloat?
  ) {
  }
  public static func _conditionallyBridgeFromObjectiveC(
    _ x: Number,
    result: inout CGFloat?
  ) -> Bool {
    return true
  }
  public static func _unconditionallyBridgeFromObjectiveC(
    _ x: Number?
  ) -> CGFloat {
    return CGFloat()
  }
}

extension NSRange : _ObjectiveCBridgeable {
  public static func _isBridgedToObjectiveC() -> Bool {
    return true
  }
  
  public func _bridgeToObjectiveC() -> Value {
    return Value()
  }

  public static func _forceBridgeFromObjectiveC(
    _ x: Value,
    result: inout NSRange?
  ) {
    result = x.rangeValue
  }
  
  public static func _conditionallyBridgeFromObjectiveC(
    _ x: Value,
    result: inout NSRange?
  ) -> Bool {
    self._forceBridgeFromObjectiveC(x, result: &result)
    return true
  }
  public static func _unconditionallyBridgeFromObjectiveC(
    _ x: Value?
  ) -> NSRange {
    return NSRange()
  }
}

extension Error : ErrorProtocol {
  public var _domain: String { return domain }
  public var _code: Int { return code }
}

@_silgen_name("swift_convertNSErrorToErrorProtocol")
func _convertNSErrorToErrorProtocol(_ string: Error?) -> ErrorProtocol

@_silgen_name("swift_convertErrorProtocolToNSError")
func _convertErrorProtocolToNSError(_ string: ErrorProtocol) -> Error