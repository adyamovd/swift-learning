import UIKit

var dictionary = ["Костя": "Нагатинский достроят", "Влад": "Хорошо, жду деньги с кредитной карты", "Диас": "Из шапки жестко дует", "Арман": "Есть жб экспресс", "Агентсвто недвижимости": "Хата - бомба, пацаны"]
dictionary["Жубик"] = "Костя, а ну-ка прибери за мной"
dictionary["Дженни"] = "Где Саломоны?"
print(dictionary)
for key in dictionary.keys.sorted() {
    let greeting = dictionary[key] ?? "Ошибка"
    print(key, greeting)
}
