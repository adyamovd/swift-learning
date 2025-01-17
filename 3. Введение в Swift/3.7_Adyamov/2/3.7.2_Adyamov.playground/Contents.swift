import UIKit

var arrayIntegers = [5, 7, 10, 22, 30] // добавлен пробел после каждой запятой
print(arrayIntegers.count) // вывел количество элементов
arrayIntegers[0] += arrayIntegers.count
print(arrayIntegers) // проверил что сработало
var resultArray: [Int] = []
var resultValue = 1
for value in arrayIntegers {
    resultValue *= value
}
arrayIntegers.append(resultValue)
print(arrayIntegers)

