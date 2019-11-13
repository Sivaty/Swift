//
//  main.swift
//  方法
//
//  Created by Link on 2019/11/12.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Person {
    var age = 10
    mutating func passYear() {
        age += 1
    }
}

@discardableResult func sum(_ n1: Int, _ n2: Int) -> Int {
    n1 + n2
}

sum(1, 2)

class Point {
    var x = 0.0
    var y = 0.0
    subscript(index: Int) -> Double {
        set {
            if index == 0 {
                x = newValue
            } else if index == 1 {
                y = newValue
            }
        }
        get {
            if index == 0 {
                return x
            } else if index == 1 {
                return y
            }
            return 0
        }
    }
}

var point = Point()
point[0] = 1.1
point[1] = 2.2
print(point.x)
print(point.y)
print(point[0])
print(point[1])


struct Point1 {
    var x = 0
    var y = 0
}

class PointManager {
    var point = Point1()
    subscript(index: Int) -> Point1 {
        set {
            point = newValue
        }
        get {
            point
        }
    }
    
}

var manager = PointManager()
manager[0].x = 2


class Grid {
    var data = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]
    subscript(row: Int, column: Int) -> Int {
        set {
            guard row >= 0 && row < 3 && column >= 0 && column < 3 else {
                return
            }
            data[row][column] = newValue
        }
        get {
            guard row >= 0 && row < 3 && column >= 0 && column < 3 else {
                return 0
            }
            return data[row][column]
        }
    }
}
