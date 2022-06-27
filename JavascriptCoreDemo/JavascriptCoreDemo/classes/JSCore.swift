//
//  JSCore.swift
//  JavascriptCoreDemo
//
//  Created by 茅野瓜子 on 2022/6/27.
//

import JavaScriptCore

class JSCore {
    
    let context: JSContext?
    
    init() {
        context = .init()
        context?.enhancementMode()
        // 创建完 context 后加载一个 js 文件并执行顶层代码, 将函数和对象加载在全局对象中
        let jspath = Bundle.main.path(forResource: "main", ofType: "js") ?? ""
        let content = try? String(contentsOfFile: jspath, encoding: .utf8)
        context?.evaluateScript(content)
    }
    
    func callMainFunc() {
        // 从上下文中获取 main 函数
        let mainFunc = context?.objectForKeyedSubscript("main")
        // 向 main 函数传惨并调用
        mainFunc?.call(withArguments: [])
    }
}
