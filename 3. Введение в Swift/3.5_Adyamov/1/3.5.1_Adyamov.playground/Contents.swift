import UIKit

let width = 10
let length = 100
var square = width * length
if square < 400 {
    print("Слишком маленький участок, не берем")
} else if square < 600 {
    print("Места хватит только посадить картошку, не берем")
} else if square < 800 {
    print("Площадь участка на грани, нужно ехать смотреть участок вживую")
} else if square < 1200 {
    print("Площадь хорошая, все уместится")
} else {
    print("Площадь слишком большая, нам не подходит")
}
