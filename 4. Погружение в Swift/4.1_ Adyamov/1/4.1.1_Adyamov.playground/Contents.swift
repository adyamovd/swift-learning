import UIKit

class Fight { // родительский класс
    
    var firstFighter: String
    var secondFighter: String
    var winner: String
    fileprivate var firstFighterxp = 99
    
    init(firstFighter: String, secondFighter: String, winner: String) {
        self.firstFighter = firstFighter
        self.secondFighter = secondFighter
        self.winner = winner
    }
    
    func fightIsOn(_ phrase: String) {
        guard isFighterAlive() else {
            print("\(firstFighter) is on the floor \u{1F923}")
            return
        }
        firstFighterxp -= 1
        print(phrase)
    }
    
    fileprivate func isFighterAlive() -> Bool { // инкапсуляция
        firstFighterxp > 0
    }
}

class Newgeneration: Fight { // дочерний класс
    override init(firstFighter: String, secondFighter: String, winner: String) {
        super.init(firstFighter: firstFighter, secondFighter: secondFighter, winner: winner)
    }
}

let newGeneration = Newgeneration(firstFighter: "Vlad", secondFighter: "Dias", winner: "Girls")

for _ in 0..<100 {
    newGeneration.fightIsOn("Vlad gets his ass whooped by a small girl 🥊")
}

class CultFight: Fight {
    
    override func fightIsOn(_ phrase: String) {
        guard isFighterAlive() else {
            print("\(firstFighter) is on the floor \u{1F923}")
            return
        }
        firstFighterxp -= 2 // пример полиморфизма, увеличил в 2 раза урон от Тохи, функция та же, но есть изменения
        print(phrase)
    }
}

let cultFight = CultFight(firstFighter: "Timur", secondFighter: "Mereke", winner: "Toha")

for _ in 0..<51 {
    cultFight.fightIsOn("Toha is dangerous")
}
