import UIKit

extension String {
    func isEqualCaseInsensitive(with other: String) -> Bool {
        return self.lowercased() == other.lowercased()
    }
}

let resultPositive = "hello".isEqualCaseInsensitive(with: "HELLO")
print(resultPositive)

let resultNegative = "hello".isEqualCaseInsensitive(with: "Dias")
print(resultNegative)
