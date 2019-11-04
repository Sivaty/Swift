//
//  main.swift
//  TestSwift
//
//  Created by Link on 2019/10/29.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

let range: ClosedRange<Character> = "a"..."z"

for item in stride(from: 4, through: 11, by: 2) {
    print(item)
}


let index = 13

switch index {
case 0...3:
    print("0...3")
case 4...15:
    print("4...15")
default:
    print("other")
}

let point = (2, 0)
switch point {
case (let x, 0):
    print("x is \(x)")
case (0, let x):
    print("x is \(x)")
case let (x, y):
    print("x is \(x), y is \(y)")
}

var numbers = [1, 2, 3, 4, -1, -2, -3, -4]

for item in numbers where item > 0 {
    print(item)
}

//标签语句
outer: for i in 1...3 {
    for j in 1...3 {
        if j == 3 {
            continue outer
        }
        print("i = \(i), j = \(j)")
    }
}


func pi() -> Double {
    return 3.14159
}


func sum(n1:Int, n2:Int) -> Int {
    return n1 + n2
}

let sumNumber = sum(n1: 2, n2: 3)
print("sum is \(sumNumber)")

func sum1(numbers: Int...) -> Int {
    var sum = 0
    for item in numbers {
        sum += item
    }
    return sum
}

print(sum1(numbers: 1, 2, 3))
