import UIKit

var colorSet: Set = ["Белый", "Черный", "Голубой", "Синий", "Коричневый", "Фиолетовый" ]
if colorSet.count > 5 {
    colorSet.insert("Красный")
}
print(colorSet.sorted())
