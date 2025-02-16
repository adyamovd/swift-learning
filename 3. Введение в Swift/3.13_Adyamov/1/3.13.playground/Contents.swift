import UIKit

enum Grade: String {
    case junior = "Junior"
    case middle = "Middle"
    case senior = "Senior"
}

enum Developer {
    case iOS(grade: Grade)
    case android(grade: Grade)
    
    func getDescription() -> String {
        switch self {
        case .iOS(let grade):
            return "\u{1F34F}\(grade.rawValue) iOS-developer"
        case .android(let grade):
            return "\u{1F916}\(grade.rawValue) Android-developer"
        }
    }
}

let developers: [Developer] = [.iOS(grade: .junior), .android(grade: .senior)]
for developer in developers {
    print(developer.getDescription())
}
