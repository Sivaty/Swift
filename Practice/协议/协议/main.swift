//
//  main.swift
//  协议
//
//  Created by Link on 2019/11/16.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")


// MARK:- init
protocol Drawable {
    init(x:Int, y:Int)
}

class Point: Drawable {
    required init(x: Int, y: Int) { }
}

final class Size: Drawable {
    init(x: Int, y: Int) { }
}

protocol Livable {
    init(age: Int)
}

class Person : CustomStringConvertible {
    var age: Int
    init(age: Int) {
        self.age = age
    }
    var description: String {
        "age is \(age)"
    }
    
    func run() {
        print("run")
    }
}

class Student: Person, Livable {
//    required override init(age: Int) { }
    override required init(age: Int) {
        super.init(age: age)
    }
}

protocol Runnable { }
//接收Person或者子类实例
func fn0(obj: Person) { }
//接收遵守Livable协议的实例
func fn1(obj: Livable) { }
//接收同时遵守Livable、Runnable协议的实例
func fn2(obj: Livable & Runnable) { }
//接收同时遵守Livable、Runnable协议且是Person或者子类的实例
func fn3(obj: Person & Livable & Runnable) { }


enum Season : CaseIterable {
    case spring, summer, autumn, winter
}

let seasons = Season.allCases
print(seasons)

for season in seasons {
    print(season)
}

let man = Person.init(age: 10)
print(man) //age is 10

var stu: Any = 10
(stu as? Person)?.run()


