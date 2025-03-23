import UIKit

protocol Animal {
    func sound() -> String
    func eat() -> String
}

class Cat: Animal {
    func sound() -> String {
        return "Мяу"
    }
    
    func eat() -> String {
        return "Кот с улиц ест все, что поймает"
    }
}

class Dog: Animal {
    func sound() -> String {
        return "Реал Мадрид - чемпион"
    }
    
    func eat() -> String {
        return "Собака ест корм"
    }
}

class Pigeon: Animal {
    func sound() -> String {
        return "Он помыл машину"
    }
    
    func eat() -> String {
        return "Птица употребляет много калорий"
    }
}

let animals: [Animal] = [Cat(), Dog(), Pigeon()]

for animal in animals {
    print(animal.sound())
    print(animal.eat())
}
