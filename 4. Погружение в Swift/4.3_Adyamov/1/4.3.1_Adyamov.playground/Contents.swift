import UIKit

@propertyWrapper
struct SizeLimit {
    var width: Double
    var height: Double
    
    var wrappedValue: (width: Double, height: Double) {
        get { (width, height) }
        set {
            width = max(newValue.width, newValue.height * 2)
            height = newValue.height
        }
    }
    
    init(wrappedValue: (width: Double, height: Double)) {
        self.width = wrappedValue.width
        self.height = wrappedValue.height
    }
}

struct Button {
    var text: String
    var color: String
    var action: () -> Void
    
    @SizeLimit var size: (width: Double, height: Double)
    
    func press() {
        action()
    }
}

let button = Button(
    text: "Button",
    color: "Blue",
    action: { print("Button pressed!") },
    size: (width: 100, height: 200)
)

button.press()
print("Size: \(button.size.width) x \(button.size.height)")
