//
//  main.swift
//  gcd
//
//  Created by Link on 2020/2/1.
//  Copyright © 2020 Link. All rights reserved.
//

import Foundation
import Dispatch

func after1() {
    let item = DispatchWorkItem {
        print("1")
    }
    DispatchQueue.global().asyncAfter(deadline: .now() + .milliseconds(300), execute: item)
}

for _ in 0...5 {
    DispatchQueue.global().async {
        after1()
    }
}






