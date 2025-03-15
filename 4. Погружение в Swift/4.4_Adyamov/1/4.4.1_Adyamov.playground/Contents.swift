import UIKit

class Fighter {
    
    let name: String
    var hp: Int
    
    init(name: String, hp: Int) { // designated инициализатор (без изменений от старого кода). Для создания экземпляра Fighter с именем и количеством хп
        self.name = name
        self.hp = hp
    }
    
    required init(name: String) { // required инициализатор, чтобы дочерний класс обязательно реализовывал этот инициализатор
            self.name = name
            self.hp = 100
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

final class Newgeneration: Fight {
    convenience init(fighterA: String, hpA: Int, fighterB: String, hpB: Int) { // пример использования convenience инициализатора, в данном случае для более короткой инициализации объекта в массиве fights. Также, раз уж уже есть конвиниенс то не обязательно прописывать отдельно required
        self.init(firstFighter: Fighter(name: fighterA, hp: hpA), secondFighter: Fighter(name: fighterB, hp: hpB))
    }
}

final class CultFight: Fight {
    
    override required init(firstFighter: Fighter, secondFighter: Fighter) { // required инициализатор, так как на 13 строке прописан required
           super.init(firstFighter: firstFighter, secondFighter: secondFighter)
       }
    
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
    Newgeneration(fighterA: "Dias", hpA: 10, fighterB: "Tanya Smirnova", hpB: 20), // результат convenience инициализатора
    CultFight(firstFighter: Fighter(name: "Timur", hp: 10), secondFighter: Fighter(name: "Toha", hp: 30))
]

for fight in fights {
    fight.startFight("Fighting...")
}
