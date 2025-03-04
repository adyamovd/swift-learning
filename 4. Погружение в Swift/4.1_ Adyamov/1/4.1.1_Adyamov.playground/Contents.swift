import UIKit

class Fighter {
    
    let name: String
    var hp: Int
    
    init(name: String, hp: Int) {
        self.name = name
        self.hp = hp
    }
    
    func isFighterAlive() -> Bool {
        return hp > 0
    }
}

class Fight {
    
    let firstFighter: Fighter
    let secondFighter: Fighter
    
    init(firstFighter: Fighter, secondFighter: Fighter) {
        self.firstFighter = firstFighter
        self.secondFighter = secondFighter
    }
    
    func startFight(_ phrase: String) {
        while firstFighter.isFighterAlive() || secondFighter.isFighterAlive() {
            let randomFighter = Bool.random() ? firstFighter : secondFighter
            randomFighter.hp -= 1
            print(phrase)
        }
        
        let winner = firstFighter.isFighterAlive() ? firstFighter.name : secondFighter.name
        print("\(winner) wins. Fatality 🥊")
    }
}

final class Newgeneration: Fight {}

final class CultFight: Fight {
    
    override func startFight(_ phrase: String) {
        while firstFighter.isFighterAlive() || secondFighter.isFighterAlive() {
            let randomFighter = Bool.random() ? firstFighter : secondFighter
            randomFighter.hp -= 2
            print(phrase)
        }
        
        let winner = firstFighter.isFighterAlive() ? firstFighter.name : secondFighter.name
        print("\(winner) wins. Fatality 🥊")
    }
}

let fights: [Fight] = [
    Newgeneration(firstFighter: Fighter(name: "Dias", hp: 10), secondFighter: Fighter(name: "Tanya Smirnova", hp: 20)),
    CultFight(firstFighter: Fighter(name: "Timur", hp: 10), secondFighter: Fighter(name: "Toha", hp: 30))
]

for fight in fights {
    fight.startFight("Fighting...")
}
