//
//  main.swift
//  泛型
//
//  Created by Link on 2019/11/25.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

var n1 = 10
var n2 = 20

//func swapValues(_ n1: inout Int, _ n2: inout Int) {
//    (n1, n2) = (n2, n1)
//}

func swapValues<T>(_ n1: inout T, _ n2: inout T) {
    (n1, n2) = (n2, n1)
}

swapValues(&n1, &n2)
print(n1, n2)
