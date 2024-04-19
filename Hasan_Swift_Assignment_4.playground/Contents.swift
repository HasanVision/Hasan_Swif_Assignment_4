import Foundation

protocol Trailer {
    var brand: String { get set }
    func startEngine()
    func stopEngine()
}

protocol EntertainmentSystem {
    var hasTV: Bool { get set }
    func turnOnTV()
    func turnOffTV()
}


protocol ElectricitySystem {
    var batteryLevel: Double { get set }
    func chargeBattery()
    func checkBatteryLevel()
}

class Camper: Trailer, EntertainmentSystem, ElectricitySystem {
    
    var batteryLevel: Double
    var brand: String
    var hasTV: Bool

    init(brand: String, hasTV: Bool, batteryLevel: Double) {
        self.brand = brand
        self.hasTV = hasTV
        self.batteryLevel = batteryLevel
    }
    
    func chargeBattery() {
//        self.batteryLevel = 75.0
        print("Battery charged to \(self.batteryLevel)%")
    }
        
    func checkBatteryLevel() {
        if self.batteryLevel < 20.0 {
            print("Battery level is LOW!")
        } else {
            print("Battery level is \(self.batteryLevel)%. ")
        }
    }
    
    func startEngine() {
        print("Engine started.")
    }
    
    func turnOnTV() {
        if !hasTV {
            print("TV is not available")
            return
        } else if hasTV && self.batteryLevel > 50.0 {
            print("TV is ON")
        } else {
            print("Battery too low to turn on the TV.")
        }
    }
    
    func turnOffTV() {
        print("TV is Off.")
    }
    
    func stopEngine() {
        print("Engine has stopped.")
    }
}


// Testing the logic
let myCamper = Camper(brand: "Coachmen", hasTV: true, batteryLevel: 10.0)

myCamper.startEngine()
myCamper.chargeBattery()
myCamper.checkBatteryLevel()
myCamper.turnOnTV()
myCamper.turnOffTV()
myCamper.stopEngine()




