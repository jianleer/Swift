//
//  AppDelegate.swift
//  字符串和字符
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
        
//      1  字符串字面量
        let someSting = "123456678"
        /*
        字符串字面量可以包含以下特殊字符：
        1.转义特殊字符 \0 (空字符)、\\(反斜线)、\t (水平制表符)、\n (换行符)、\r (回车符)、\" (双引号)、\' (单引号)。
        2.单字节 Unicode 标量，写成 \xnn，其中 nn 为两位十六进制数。
        3.双字节 Unicode 标量，写成 \unnnn，其中 nnnn 为四位十六进制数。
        4.四字节 Unicode 标量，写成 \Unnnnnnnn，其中 nnnnnnnn 为八位十六进制数。
        */
        let emptyString = ""
        let emptyString1 = String()
//        通过检查其 Boolean 类型的 isEmpty 属性来判断该字符串是否为空：
        if emptyString.isEmpty{
            println("空字符串")
        }
        
//       2 字符串可变性
        var changString = "change"
        changString = changString + "123456"
        println("changString\(changString)")
        changString += "shenMeGui"
        println("changString \(changString)")

//       3 字符串遍历  每一个字符值代表一个 Unicode 字符  可用for循环遍历
        for Character in  changString{
            println(Character)
        }
        
        let yenSign:Character = "￥"
        println(yenSign)
        
        
//       4 获取该字符串的字符数量
        let unusualMengerie = "Koala ?????,Snai ????,Penguin ????,Dromedary ????"
        println("unusalMeagerie has \(countElements(unusualMengerie)) characters")
        
        
//       5 比较字符串  Swift 提供了三种方式来比较字符串的值：字符串相等，前缀相等和后缀相等。
        let string1 = "apple watch"
        let string2 = "google watch"
        let string3 = "apple pay"
        let string4 = "apple pay"
//        字符串相等
        if string3 == string4 {
            println("string3 is equal string4")
        }
        
        if  string1.hasPrefix("apple"){
            println("前缀是apple")
        }
        
        if string2.hasSuffix("watch"){
            println("后缀是watch")
        }
        
//        字符串串大小写转换
        let normalString = "No Zuo No Die"
        let daXie = normalString.uppercaseString
        println("大写 : \(daXie)")
        let xiaoXie = normalString.lowercaseString
        println("小写 : \(xiaoXie)")
        
//        Unicode
        let dogString = "Dog!???"
//        6 UTF-8
        for  codeUnit in dogString.utf8{
            println("8 :\(codeUnit)")
        }
        println("\n")
//        UTF16
        for UTF16String in dogString.utf16{
            println("16 : \(UTF16String)")
        }
//        Unicode标量(Scalars)
        for scalar in dogString.unicodeScalars{
            println("scalar.value :\(scalar.value)")
        }
        
        for scalar in dogString.unicodeScalars{
            println("scalar :\(scalar)")
        }
        
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

