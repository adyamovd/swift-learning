import UIKit

var nameString = "Name: Dias \u{1F408}\n"
var surnameString = "Surname: Adyamov\n"
var ageString = "Age: 26\n"
var hobbyString = "Hobbies: Cars, Hip-Hop, Football\n"
var salaryString = "Salary expectations: 4444 USD"
var sumString = nameString+surnameString+ageString
sumString += hobbyString
sumString.append (salaryString)
print(sumString)
let nameAgainString = "Dias"
nameAgainString.forEach { char in
    print(char)
}
