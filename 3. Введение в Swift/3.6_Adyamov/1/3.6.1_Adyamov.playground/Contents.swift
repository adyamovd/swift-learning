import UIKit

var optionalInt = Int("444")
let forPrint = optionalInt!
// force unwrapping - принудительное извлечение значения из опционала. Ставится восклицательный знак после опционального значения. В случае если значения все-таки не будет - будет краш в рантайме, этот вариант лучше особо не юзать. Есть варик сразу в объявлении переменной поставить воскл знак - это неявно извлеченный опционал
print(forPrint)

// Optional binding - разворачивает опционал с помощью  if let (или guard let). Из того что я понял - очень объемно в сравнении со следующими двумя вариантами, при этом особо плюшек нету
let randomValue: Int? = 150
var summ = 0
if let optionalInt, let randomValue {
    summ = optionalInt + randomValue
} else if let optionalInt {
    summ = optionalInt
} else if let randomValue {
    summ = randomValue
}
print(summ)

// Оператор ??. Или разворачивает опционал и возвращает его значение или выдает другое значение
let someNumber = "49309"
var thirdValue = Int(someNumber) ?? 0
thirdValue += 20

// Optional chaining. По сути обращение к опционалу, записывается через знак вопроса. Пытался провернуть с переменной интеджер, то есть объявить опционал и потом с помощью знака вопроса сложить с другим интом, не сработало (если честно не очень понял почему), поэтому подрезаю как в уроке с текстом.

let string: String? = "Диас покоритель миров"
let newString = string?.replacing("покоритель", with: "супер").replacing("миров", with: "пупер")
print(newString)
