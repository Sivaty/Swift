//
//  main.swift
//  枚举
//
//  Created by Link on 2019/11/8.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

enum Ages: Int {
    case one = 1, two = 2, three = 3
}

var a: Int? = nil

print(a)

struct Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}
