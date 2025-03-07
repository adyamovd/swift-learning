import UIKit

struct Human {
    let firstName: String
    let lastName: String
    let age: Int
    let gender: String
    let height: Double
    let isActive: Bool
    let activities: [Activity]
    
    struct Activity {
        let distance: Double
        let date: String
    }
    
    func printInfo() {
        let status = isActive ? "Активен" : "Не активен"
        print("""
        Имя: \(firstName)
        Фамилия: \(lastName)
        Возраст: \(age) лет (года)
        Пол: \(gender)
        Рост: \(height) м
        Статус: \(status)
        Активности на даты:
        """)
        
        for activity in activities {
            print("Пройденная дистанция: \(activity.distance) км, дата: \(activity.date)")
        }
    }
}

let arrayActivities = [
    Human.Activity(distance: 4.4, date: "06.03.2025"),
    Human.Activity(distance: 10.0, date: "05.03.2025")
]

let human = Human(firstName: "Диас", lastName: "Адямов", age: 26, gender: "Мужской", height: 1.78, isActive: true, activities: arrayActivities)

human.printInfo()
