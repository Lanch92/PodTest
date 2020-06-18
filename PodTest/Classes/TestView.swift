//
//  TestView.swift
//  PodTest
//
//  Created by lu on 2020/6/18.
//

import Foundation

/// 定义全局 log 输出函数
public func CMLog<T>(_ message: T?, file: String = #file, funcName: String = #function, lineNum: Int = #line){
    
    #if DEBUG
    let file = (file as NSString).lastPathComponent;
    guard let msg = message else {
        
        print("[\(file).\(funcName): \(lineNum)]: empty message")
        return
    }
    print("[\(file).\(funcName): \(lineNum)]: \(msg)")
    #endif
}
