import UIKit

/*
 Swift provides five different access level
 1. open access - has highest access level
 2. public access
 3. Internal access
 4. File-Private
 5. Private - has lowest access level
 */

// Read documentation

// Default access level is internal

//------------------------------------------------------------------------------//
// Access Control Syntax

//public class SomePublicClass {}
//internal class SomeInternalClass {}
//fileprivate class SomeFilePrivateClass {}
// private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func soemPrivateFunction() {}

// Default access level
class DefaultSomeInternalClass {}  // implicitly internal
let DefaultsomeInternalConstant = 0 // implicitly internal

//------------------------------------------------------------------------------//
// Custom Types

public class SomePublicClass { // explicitly public class
    public var somePublicVariable = 0 // explicitly public class
    var someInternalProperty = 0 // implicitly internal class member
    fileprivate func someFilePrivateFunction() {} // explicitly file-private class member
    private func soemPrivateFunction() {} // explicitly private class member
}

class SomeInternalClass { // implicitly internal class
    var someInternalProperty = 0 // implicitly internal class member
    fileprivate func someFilePrivateFunction() {} // explicitly file-private class member
    private func soemPrivateFunction() {} // explicitly private class member
}

fileprivate class SomeFilePrivateClass { // explicitly file-private class
    func someFilePrivateFunction() {} // implicitly file-private class member
    private func soemPrivateFunction() {} // explicitly private class member
}

private class SomePrivateClass { // explicitly private class
    func somePrivateFunction() {} // implicitly private class member
}

// Tuple Types - Documentation
// Fuction Types -

/*
 func someFunction() -> (SomeInternalClass, SomePrivateClass) { // won't complile because of private
 // function implementation goes here
 }
 */

/*
 private func someFunction() -> (SomeInternalClass, SomePrivateClass) { // complile because of private func
 // function implementation goes here
 }
 */

// Enumeration Types
public enum CompassPoint {
    case north
    case south
    case east
    case west
}

// Nested Types - Documentation

// Subclassing
public class A {
    fileprivate func somemethod() {}
}

internal class B: A {
    override internal func somemethod() {}
}

public class A1 {
    fileprivate func somemethod() {}
}

internal class B1: A1 {
    override internal func somemethod() {
        super.somemethod()
    }
}

/*
 public class A2 {
     private func somemethod() {}
 }

 internal class B2: A2 {
     override internal func somemethod() {
         super.somemethod()
     }
 }

 */

//------------------------------------------------------------------------------//
// Constants, variables, properties and subscripts

private var privateInstance = SomePrivateClass() // correct

//public var privateInstance2 = SomePrivateClass() // it's not right to create a public to private type

// Getters and Setters

// filePrivate(set), private(set) or internal(set)

struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
}

var stringToEdit = TrackedString()
stringToEdit.value = "Himanshu"
stringToEdit.value = "Shivanshu"
stringToEdit.value = "Aman"
stringToEdit.value = "Ayush"
print(stringToEdit.numberOfEdits)

public struct TrackedString2 {
    public private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
    
    public init() {}
}

// Initializers - Documentation

// Protocols - Documentation

// Exensions - Documentation

protocol SomeProtocol {
    func doSomething()
}

struct SomeStruct {
    private var privateVariable = 12
}

extension SomeStruct: SomeProtocol {
    func doSomething() {
        print(privateVariable)
    }
}

// generics - Documentation
// TypeAlias - Documentation

