import UIKit

var inputString = "А не спеть ли мне песню о любви? А не выдумать ли новый жанр?"
let changeString = "ли"
let replaceString = "ка"
print("Исходный текст")
print(inputString)
print("Текст для замены")
print(changeString)
print("Меняем \"\(changeString)\" на:")
print(replaceString)
print("Результат выполения программы:")
inputString.replace(changeString, with: replaceString)
print(inputString)
