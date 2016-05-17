//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Vehicle {
    
    var speed: Double {get}
    var isMoving: Bool {get set}
    
    mutating func startCar()
    mutating func stopCar()
}

extension Vehicle {
    
    mutating func startCar() {
        if !isMoving {
            isMoving = true
            print(isMoving)
        }
    }
    
    mutating func stopCar() {
        if isMoving {
            isMoving = false
            print(isMoving)
        }
    }
}

class Tesla: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    var charging: Bool
    var batteryLeft: Float
    
    init(speed: Double, isMoving: Bool, charging: Bool, batteryLeft: Float) {
        
        self.speed = speed
        self.isMoving = isMoving
        self.charging = charging
        self.batteryLeft = batteryLeft
    }
}

class LawnMower: Vehicle {
    
    var speed: Double
    var isMoving: Bool
    var isMowing: Bool
    var is4x4: Bool
    
    init(speed: Double, isMoving: Bool, isMowing: Bool, is4x4: Bool) {
        
        self.speed = speed
        self.isMoving = isMoving
        self.isMowing = isMowing
        self.is4x4 = is4x4
    }
}

var modelS = Tesla(speed: 120, isMoving: true, charging: false, batteryLeft: 53.0)
print(modelS.isMoving)
modelS.stopCar()

var x301Mower = LawnMower(speed: 8, isMoving: true, isMowing: true, is4x4: true)
print(x301Mower.isMoving)










