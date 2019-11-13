//
//  main.swift
//  闭包
//
//  Created by Link on 2019/11/11.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

func sum(v1: Int, v2: Int, fn: (Int, Int) -> Int) {
    print(fn(v1, v2))
}

var fn = {
    (v1: Int, v2: Int) -> Int in
    return v1 + v2
}

sum(v1: 2, v2: 3, fn: {
    v1, v2 in return v1 + v2
})

sum(v1: 2, v2: 3, fn: {
    v1, v2 in v1 + v2
})

sum(v1: 2, v2: 3, fn: { $0 + $1 })

sum(v1: 2, v2: 3, fn: + )

sum(v1: 2, v2: 5) { (v1, v2) -> Int in
    v1 + v2
}


func exec(fn: (Int, Int) -> Int) {
    print(fn(2, 2))
}

exec { (v1, v2) -> Int in
    v1 + v2
}

//func getFirstPositive(v1: Int, v2: () -> Int) -> Int {
//    return v1 > 0 ? v1 : v2()
//}
//
//getFirstPositive(v1: 10, v2: {20})

func getFirstPositive(v1: Int, v2: @autoclosure () -> Int) -> Int {
    return v1 > 0 ? v1 : v2()
}

getFirstPositive(v1: 10, v2: 20)
