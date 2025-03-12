import UIKit

@propertyWrapper
struct SizeLimit {
    var size: Size
    
    var wrappedValue: Size {
        get { size }
        set {
            size.width = max(newValue.width, newValue.height * 2)
            size.height = newValue.height
        }
    }
    
    init(wrappedValue: Size) {
        self.size = Size(width: 0, height: 0)
        self.wrappedValue = wrappedValue
    }
}

struct Size {
    var width: Double
    var height: Double
}

struct Button {
    var text: String
    var color: String
    var action: () -> Void
    
    @SizeLimit var size: Size
    
    func press() {
        action()
    }
}

let button = Button(
    text: "Button",
    color: "Blue",
    action: { print("Button pressed!") },
    size: Size(width: 100, height: 200)
)

button.press()
print("Size: \(button.size.width) x \(button.size.height)")
