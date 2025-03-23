import UIKit

protocol Building {
    func area() -> Double
}

class House: Building {
    var length: Double
    var width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    func area() -> Double {
        return length * width
    }
}

class UtilityBlock: Building {
    var length: Double
    var width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    func area() -> Double {
        return length * width
    }
}

class BathHouse: Building {
    var length: Double
    var width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    func area() -> Double {
        return length * width
    }
}

class Garage: Building {
    var length: Double
    var width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    func area() -> Double {
        return length * width
    }
}

class PlotOfLand {
    var landArea: Double
    
    init(landArea: Double) {
        self.landArea = landArea
    }
    
    func freeArea(buildings: [Building]) -> Double {
        var occupiedArea = 0.0
        for building in buildings {
            occupiedArea += building.area()
        }
        return landArea - occupiedArea
    }
}

let plot = PlotOfLand(landArea: 1000)

let buildings: [Building] = [
    House(length: 20, width: 15),
    UtilityBlock(length: 5, width: 6),
    BathHouse(length: 2, width: 3),
    Garage(length: 6, width: 4)
]

let remainingArea = plot.freeArea(buildings: buildings)
print("Незастроенная площадь участка: \(remainingArea) м2")
