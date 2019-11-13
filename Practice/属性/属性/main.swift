//
//  main.swift
//  属性
//
//  Created by Link on 2019/11/12.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Circle {
    var radius: Double
    
    var diameter: Double {
        set {
            radius = newValue / 2
        }
        get {
            radius * 2
        }
    }
    
    var padding: Double {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    
    
    lazy var coler = 20
    lazy var borderWidth: Double = {
        return 30
    }()
}

var c = Circle(radius: 10)

print(c.diameter)

print(MemoryLayout<Double>.stride)
