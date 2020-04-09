//
//  main.swift
//  操作符重载
//
//  Created by Link on 2019/12/6.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Point : Equatable {
    var x: Double, y: Double
    static func + (_ p1: Point, _ p2: Point) -> Point {
        Point(x: p1.x + p2.x, y: p1.y + p2.y)
    }
    static func - (_ p1: Point, _ p2: Point) -> Point {
        Point(x: p1.x - p2.x, y: p1.y - p2.y)
    }
    static prefix func - (_ p: Point) -> Point {
        Point(x: -p.x, y: -p.y)
    }
    static func += (_ p1: inout Point, _ p2: Point) {
        p1 = p1 + p2
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

let p1 = Point(x: 10, y: 20)
let p2 = Point(x: 11, y: 22)
let p3 = p1 + p2
print(p3)

