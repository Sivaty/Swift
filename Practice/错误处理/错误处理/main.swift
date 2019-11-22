//
//  main.swift
//  错误处理
//
//  Created by Link on 2019/11/21.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

enum SomeError : Error {
    case illegalArg(String)
    case outOfBounds(Int, Int)
    case outOfMemory
}

func divide(_ n1: Int, _ n2: Int) throws -> Int {
    if n2 == 0 {
        throw SomeError.illegalArg("0不能作为除数")
    }
    return n1 / n2
}

func test() {
    print("1")
    do {
        print("2")
        print(try divide(10, 0))
        print("3")
    } catch let SomeError.illegalArg(string) {
        print("参数异常：", string)
    } catch let SomeError.outOfBounds(size, index) {
        print("下标越界：", "size=\(size)", "index=\(index)")
    } catch SomeError.outOfMemory {
        print("内存溢出")
    } catch {
        print("other error")
    }
}

test()
