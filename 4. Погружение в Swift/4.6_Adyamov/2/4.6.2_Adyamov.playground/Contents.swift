import UIKit

extension Bool {
    var stringValue: String {
        return self ? "Истина" : "Ложь"
    }
}

let isTrue = true
let isFalse = false

print(isTrue.stringValue)
print(isFalse.stringValue)
