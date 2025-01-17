import UIKit

var arrayBoys = ["Диас", "Влад", "Костя", "Милан", "Окно", "Одеяло", "Газ", "Запах", "Мальчик", "Пацан", "Бро", "Черт"]
arrayBoys.insert("Маша", at: 2)
arrayBoys.insert(contentsOf: ["Люся", "Вафлюша", "Нюша", "Хрюша", "Оксана"], at: 3)
arrayBoys.insert("Самал", at: 5) //добавлен пробел после двоеточия после at
arrayBoys.removeFirst(4)
arrayBoys.removeLast(5)
arrayBoys.sorted()

