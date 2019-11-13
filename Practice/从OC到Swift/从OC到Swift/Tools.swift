//
//  Tools.swift
//  从OC到Swift
//
//  Created by Link on 2019/11/12.
//  Copyright © 2019 Link. All rights reserved.
//

import Foundation

func LNlog<T>(_ any: T, file: String = #file, line: Int = #line, fn: String = #function)  {
    #if DEBUG
    let prefix = "\(file.split(separator: "/").last ?? "")_\(line)_\(fn)"
    print(prefix, any)
    #endif
}

func versionControl() {
    if #available(iOS 10, macOS 10.12, *) {
        //对于iOS平台，只能在10及以上版本执行
        //对于macOS平台，只能在10.12及以上版本执行
        //对于其它平台，没有版本限制
    }
}
