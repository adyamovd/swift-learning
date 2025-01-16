import UIKit

var arrayIntegers = [5,7,10,22,30]
print(arrayIntegers.count) // вывел количество элементов
arrayIntegers[0]+=arrayIntegers.count
print(arrayIntegers) // проверил что сработало
var resultArray: [Int] = []
var value = 1
var resultValue: Int
for i in 0..<arrayIntegers.count {
    arrayIntegers[i] = arrayIntegers[i] * value
}
arrayIntegers.append(value)
print(arrayIntegers)
// брат остальные задания сделал и думаю нормально сделал. в аппенд пока вставил просто вэлью, попробовал объявить короче как мы обсудили переменную перед циклом, и я ща даже примерно догадываюсь почему считает так, как считает, но как пофиксить не понимаю, в гугле тоже херня блин, там в основном как один массив перемножить с другим (как и в уроке было в задаче в принципе. буду признателен за подсказку ))
