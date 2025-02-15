import UIKit

enum Grade: String {
    case junior = "Junior"
    case middle = "Middle"
    case senior = "Senior"
}

enum Developer {
    case iOS(grade:Grade)
    case Android(grade:Grade)
    func getDescription() -> String {
        switch self {
        case .iOS(let grade):
            return "\u{1F34F}\(grade.rawValue) iOS-developer"
        case .Android(let grade):
            return "\u{1F916}\(grade.rawValue) Android-developer"
        }
    }
}
let developers: [Developer] = [.iOS(grade: .junior), .Android(grade: .senior)]
for developer in developers {
    print(developer.getDescription())
}
