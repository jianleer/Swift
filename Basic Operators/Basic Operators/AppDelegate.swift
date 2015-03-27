//
//  AppDelegate.swift
//  Basic Operators
//
//  Created by tbtCocoaLee on 15/3/27.
//  Copyright (c) 2015年 Cocoa Lee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
//        1 赋值运算
        let b = 10
        var a = 5
        a = b//现在a = 10
//        元组
        let (x,y) = (1,2)
        println("x:\(x),y:\(y)")
        
        
        let dog :String = "d"
        let cat :String = "c"
        let dogcat = dog + cat
        println(dogcat)
        
        
        
//        2 自增与自增运算
        var a1 = 0
        let b1 = ++a1;println("a1:\(a1) b1:\(b1)")
        let c1 = a1++;println("a1:\(a1) c1:\(c1)")

//    数值的正负号可以使用前缀 - (即单目负号) 来切换:
//        3 单目负号
        let three = 3
        let minusThree = -three
        println("minusThree:\(minusThree)")
        let plusThree = -minusThree
        println("plusThree : \(plusThree)")
        
        
//        4 复合赋值
        var a2 = 1
        a2 += 2
        println(a2)
        
//        5 三木运算
//        a?b:c
        
//        6 区间运算
//        闭区间
        for index in 1...5{
            println(index)
        }
//        半闭区间
        for m in 1..<5
        {
            println(m)
        }
        
        
//        逻辑运算
//        逻辑运算的操作对象是逻辑布尔值. Swift支持基于C语言的三个标准逻辑运算.
//            
//        逻辑非 !a
        let test = false
        if !test{
            println("123")
        }
//        逻辑与 a && b
        let test2 = false
        let test3 = true
        if test2 && test3{
            println("hi")
        }else
        {
            println("kkkkk")
        }
//        逻辑或 a || b
        
        
        
        
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

