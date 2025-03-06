import UIKit

struct Activity {
    var distance: Double
    var date: String
}

struct Human {
    var firstName: String
    var lastName: String
    var age: Int
    var gender: String
    var height: Double
    var isActive: Bool // не влияет, добавил потому что в домашке есть условие
    var activities: [Activity]
    
    func printInfo() {
        let status = isActive ? "Активен" : "Не активен" //чтобы использовать bool и в консоль не выдавало true 
        print("Имя: \(firstName)")
        print("Фамилия: \(lastName)")
        print("Возраст: \(age) лет (года)")
        print("Пол: \(gender)")
        print("Рост: \(height) м")
        print("Статус: \(status)")
        
        print("Активности на даты:")
        for activity in activities {
            print("Пройденная дистанция: \(activity.distance) км, дата: \(activity.date)")
        }
    }
}

let arrayActivities = [
    Activity(distance: 4.4, date: "06.03.2025"),
    Activity(distance: 10.0, date: "05.03.2025")
]

let human = Human(firstName: "Диас", lastName: "Адямов", age: 26, gender: "Мужской", height: 1.78, isActive: true, activities: arrayActivities)

human.printInfo()
