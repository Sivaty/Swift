//
//  main.swift
//  数组
//
//  Created by Link on 2020/3/2.
//  Copyright © 2020 Link. All rights reserved.
//

import Foundation

print("Hello, World!")

var array = [1, 2, 3, 4, 5]

array.removeFirst()

let lotteryArray = array.filter { (model) -> Bool in
    model % 6 == 0
}

var lotteryNum = 0
for itemModel in lotteryArray {
    lotteryNum += itemModel
}

print(array)
print(lotteryArray)
print(lotteryNum)


    enum GiftType : Int {
//      0:空白  1:抽奖 2:喵饼 3:墨币 4:阅读券 5:抵扣券 6:一天超级会员 7:三天超级会员 8:7天超级会员
        case none
        case lottery
        case miaoCake
        case moCoin
        case readTicket
        case discountTicket
        case oneDaySuperMember
        case threeDaySuperMember
        case sevenDaySuperMember

    }

let a = 1
let b = 2
let c = 3
if a==1, b == 3 || b == 2 {
    print("111")
}
