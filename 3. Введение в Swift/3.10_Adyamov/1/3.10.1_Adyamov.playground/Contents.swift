import UIKit

var kostya = (name: "Как стать дольщиком в долгострое", author: "Костя Китаев", quantity:1)
var vlad = (name: "Как отдать эппл вотч", author: "Влад Форафонтов", quantity: 10000)
var dias = (name: "Как улететь к азерботам", author: "Диас Адямов", quantity: 21)
var jenny = (name: "Нассать в Саломоны", author: "Дженни", quantity: 9999)
var jubik = (name: "Помада", author: "Жубик", quantity: 1)
var papa = (name: "Поехали-ка со мной", author: "Талгат", quantity: 250)
var array = [kostya, vlad, dias, jenny, jubik]
for element in array {
    print(element)
}
array.append(papa)
print(array)
