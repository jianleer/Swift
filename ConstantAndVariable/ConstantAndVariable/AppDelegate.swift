//
//  AppDelegate.swift
//  ConstantAndVariable
//
//  Created by tbtCocoaLee on 15/3/25.
//  Copyright (c) 2015年 Cocoa Lee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
//      1  声明常量和变量
        let constant = 10
        var variable = 0
        let a = 1 , b = 2 ,c = 3
        var x = 0 ,y = 1 , z = 2
        
//      2 类型标注
        var welcome : String
        /*
        冒号代表 是...类型       swift会自动类型推断,不一定要写类型标注
        */
        welcome = "Heelo"
        
//      3  常量变量的命名
        let pi = 3.1415926
        let 你好 = "世界你好"
        let 😊 = "xiao"
        
//      4 输出常量和变量
        println(pi)
        println("this is a string")
        /*字符串插值输出*/
        println("tttt : \(😊)---\(pi)")
//      5 不强制在语句结尾输入分号,但是同一行有多个语句时需要用分号
        let cat = "???? cat";println(cat)
        
//       6 整数     Swift 提供了8，16，32和64位的有符号和无符号整数类型
         /*整数范围*/
        let minValue = UInt8.min
        let maxValue = UInt8.max
        println( "minValue:\(minValue)  maxValue :\(maxValue)")
        
//       7 int
        /*一般来说，你不需要专门指定整数的长度。Swift 提供了一个特殊的整数类型Int，长度与当前平台的原生字长相同：
        
        - 在32位平台上，Int和Int32长度相同。
        - 在64位平台上，Int和Int64长度相同。
        
        除非你需要特定长度的整数，一般来说使用Int就够了。这可以提高代码一致性和可复用性。即使是在32位平台上，Int可以存储的整数范围也可以达到-2147483648~2147483647，大多数时候这已经足够大了。*/
        
//       8 UInt
        /*Swift 也提供了一个特殊的无符号类型UInt，长度与当前平台的原生字长相同：
        
        - 在32位平台上，UInt和UInt32长度相同。
        - 在64位平台上，UInt和UInt64长度相同。
        
        注意：尽量不要使用UInt，除非你真的需要存储一个和当前平台原生字长相同的无符号整数。除了这种情况，最好使用Int，即使你要存储的值已知是非负的。统一使用Int可以提高代码的可复用性，避免不同类型数字之间的转换，并且匹配数字的类型推测，请参考类型安全和类型推测。*/
        
        
//       9 浮点数
         /*
         Double 代表64位浮点数
         Float  代表32为浮点数
        */
        
//       10 类型安全和类型推断
        let num = 34   //会自动推断为Int类型
        let num2 = 3.14159 //会推断为Double类型
        /*当推测浮点数的类型时，Swift 总是会选择Double而不是Float。*/
        let bun3 = 3 + 0.123454
        
//       11 数值型字面量
        /*
        一个十进制数，没有前缀
        一个二进制数，前缀是0b
        一个八进制数，前缀是0o
        一个十六进制数，前缀是0x
        */
        let shiJinZhi = 17
        let erJinZhi = 0b1010
        let baJinZhi = 0o21
        let shiLiuJinZhi = 0x11
        println("10:\(shiJinZhi) 2:\(erJinZhi) 8:\(baJinZhi) 16:\(shiLiuJinZhi)")
        
//       12 数值类型转换
        let one : Int8 = 12
        let two : UInt16 = 1000
        let thr : UInt16 = two + UInt16(one)
        println("thr:\(thr)")

//       13 整数和浮点数转换
        let doc = 1
        let ppt = 1.23455
        let pdf = Double(doc) + ppt
        println("pdf : \(pdf)")
        let xls = UInt8(pdf)
        println("xls : \(xls)")
        
        
//       14 类型别名
        
        typealias waKaKa = UInt16
        var  max = waKaKa.max
        println("wakaka : \(max)")
        typealias wawa = String
        
        let sss : wawa = "12343523"
        
        
        
        
//       15 布尔值
        
        let bool1 = false
        let bool2 = true
//        if bool1 {
//            println("false")
//        }else{
//            println("true")
//        }
        /*如果你在需要使用Bool类型的地方使用了非布尔值，Swift 的类型安全机制会报错。*/
        let i = 1
        if i == 1 {
        }
        
//        16 元组  把多个值结合成一个复合值,任意类型的值
        let http404 = (404,"Not Found ,遗失的世界") //http404的类型是 (Int,String),值是(404,"Not Found")
        let (statusCode,statusMessage) = http404
        println("The status code is \(statusCode)")
        println("The status message is \(statusMessage)")
        
//        只需要一部分元组时,分解时可以把要忽略的部分用_标记
        let (justStauecode,_) = http404
        println("justStauCode is \(justStauecode)")
        
//        通过下标区元组
        let test1 = http404.0
        let test2 = http404.1
        
//        自定义元组时给单个元素命名
        let http200Status = (statusCode1 : 200 ,description1 : "OK")
        println("http200 stauCode : \(http200Status.statusCode1)  des : \(http200Status.description1)")
        
        
//      17 可选
        let possibleNumber = "12322"
        let convertedNumber = possibleNumber.toInt()//convertedNumber被推测类型为Int?或者类型 optional Int
//        用if强制解析   当你确定可选包确实含值之后，你可以在可选的名字后面加一个感叹号(!)来获取值。这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析（forced unwrapping)
        println("convertedNumber : \(convertedNumber)")
        
        if (convertedNumber != nil) {
            println("\(possibleNumber) has int value \(convertedNumber)")
        }else
        {
            println("\(possibleNumber) not int value")
        }
//    可选绑定
        if let bb = possibleNumber.toInt(){
            println("\(possibleNumber) has int value \(convertedNumber)")
        }else
        {
            println("\(possibleNumber) not int value")

        }
        
//      18 nil 
        var http401StatuseCode : Int16? = 401
        http401StatuseCode = nil
        println("http401StatusCode : \(http401StatuseCode)")
//        如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为nil：
        var someThing : String? //someThing会被自动置为nil
        
//        隐式解析可选
        let aString : String? = "lalalallala"
        println(aString);        println(aString!)
        
        let bString : String! = "popopopopo"
        println(bString)
        /*
        你可以把隐式解析可选当做一个可以自动解析的可选。你要做的只是声明的时候把感叹号放到类型的结尾，而不是每次取值的可选名字的结尾。
        注意：如果你在隐式解析可选没有值的时候尝试取值，会触发运行时错误。和你在没有值的普通可选后面加一个惊叹号一样。
        */
        //可以把隐式解析可选当做普通可选来判断它是否包含值：
        if (bString != nil) {
            println(bString)        
        }
        //也可以在可选绑定中使用隐式解析可选来检查并解析它的值：
        if let cString = bString{
            println(cString)
        }
        
//        19 断言
        let age = 25
        assert(age > 0, "年龄必须大于0")
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

