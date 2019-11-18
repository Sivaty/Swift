//
//  main.swift
//  继承
//
//  Created by Link on 2019/11/13.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

class Person {
    
    var name: String
    
    //指定初始化器
    init() {
        self.name = "name"
    }
    //便捷初始化器
    convenience init(name: String) {
        self.init()
    }
}

class Man: Person {
    convenience init(name: String) {
        self.init()
    }
}

func test() {
    var age: Int?

    guard let num = age else {
        print("num")
        return
    }
    print(num)
    
}

test()
