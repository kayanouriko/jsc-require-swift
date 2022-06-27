### CommonJS modules in JavaScriptCore

This project is an attempt to add add support for [CommonJS modules](http://wiki.commonjs.org/wiki/Modules/1.1) in [JavaScriptCore engine](http://trac.webkit.org/wiki/JavaScriptCore).

This project references [jsc-require](https://github.com/igorski89/jsc-require) rewritten in swift.

中文讲解: [在 JavaScriptCore 中使用模块导入](https://kayanouriko.cc/#/blog/javascriptcore_enhancement)

#### Usage

copy `JavascriptCoreDemo\extensions\JSContext-Extensions.swift` into your project.

```swift
import JavaScriptCore

let context = JSContext()
context.enhancementMode()
```

For more information, please check the project.

#### Thanks

* [jsc-require](https://github.com/igorski89/jsc-require)
* [How to import modules in Swift's JavaScriptCore?](https://stackoverflow.com/questions/48354804/how-to-import-modules-in-swifts-javascriptcore)
* [浅析 commonjs 中的模块化实现原理](https://juejin.cn/post/6844904013310197767)