import UIKit

class SomeClass {
    var value = 0
}

struct SomeStruct {
    var value = 0
}

var classObject1 = SomeClass()
var structObject1 = SomeStruct()

classObject1.value = 4
structObject1.value = 4

var classObject2 = classObject1
var structObject2 = structObject1

classObject2.value = 44
structObject2.value = 44

print("classObject1.value: \(classObject1.value)")
print("structObject1.value: \(structObject1.value)")
print("classObject2.value: \(classObject2.value)")
print("structObject2.value: \(structObject2.value)")

