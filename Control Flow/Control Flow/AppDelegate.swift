//
//  AppDelegate.swift
//  Control Flow
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
        
//        1 For 循环
        for  i in 1...5 {
            println("i : \(i)")
        }
        
        let base = 3
        let power = 10
        var answer = 1
//        你不需要知道范围内每一项的值，你可以使用下划线（_）替代变量名来忽略对值的访问：
        for  _ in 1...power{
            answer *= base
        }
        println("3的10次幂:\(answer)")
//        遍历数组所有元素
        let names = ["Tim","Cat","Dog"]
        for name in names{
            println("Hello,\(name)")
        }
//        遍历字典,返回类型是元组   字典是无序的
        let ages = ["age1":1,"age2":23,"age3":34]
        for (key,value) in ages{
            println("\(key) is \(value)")
        }
        
//        遍历字符
        for Character in "Hello"{
            println(Character)
        
        
        }
        
//        2 for条件递增
        for var i = 0 ; i<5 ; i++ {
            println("i=\(i)")
            }
//        如果想在循环结束后访问 i 的值，你必须要在循环生命周期开始前声明 i。
        var i2 : Int
        for i2 = 10 ; i2<15 ; i2++ {
            
            println("i2=\(i2)")
            
            }
        
        
//        while循环
        /*
        - while 循环，每次在循环开始时计算条件是否符合；
        
        - do-while 循环，每次在循环结束时计算条件是否符合。
        */
        
//        while
        let finalSquare = 25
       var board = [Int](count: finalSquare + 1, repeatedValue: 0)
        board[03] = +08;board[06] = +11;board[09] = +09;board[10] = +02
        board[14] = -10;board[19] = -11;board[22] = -02;board[24] = -08
        
//        while
        var square = 0
        var diceRoll = 0
        /*
        while square < finalSquare{
            if ++diceRoll == 7{diceRoll = 1}
            square += diceRoll
            if square < board.count{
                square += board[square]
            }
        }
        println("Game over!")
        */
        
//        do while
        do{
        square += board[square]
            if ++diceRoll == 7{diceRoll = 1}
            square += diceRoll
        }while square < finalSquare
         println("Game over!")
        
        
        
//     条件语句
//        if
        var a = 40
        if a<32{
            println("符合条件")
        }else
        {
            println("不符合条件")
        }
        
//        switch
        let m : String = "aa"
        
        switch m{
            case "a","b","aa":
                    println("lalal")
                    println("匹配")
            case "b","c":
                   println("tototoot")
        default:
            println("什么鬼")
            
        }
        
        
//        范围匹配
        let num = 10
        switch num {
        case 0:
            println("0")
        case 1...5:
            println("1-5")
        case 5...10:
            println("5-10")
        case 10...15:
            println("10-15")
        default:
            println("bababba.......")
        }
        
        
//        元组(Tuple)  _可以匹配任何值
        let point = (1,1)
        switch point{
        case(0,0):
            println("(0,0)")
        case(_,0):
            println("(*,0)")
        case(_,1):
            println("(*,1)")
        default:
            println("wawawa")
        }
        
        let point2 = (2,0)
        switch point2{
        case(let x ,0):
            println("point2在X轴上,坐标点是(\(x),0)")
        case(0,let y):
            println("point2在Y轴上,坐标点是(0,\(y))")
        case let(x,y):
            println("坐标点是(\(x),\(y))")
        
        }
        
        
//        Where
//        case块的模式可以使用where语句来判断额外的条件。
        let point3 = (1,-1)
        switch point3{
        case let(m,n) where m==n:
            println("m==n")
        case let(m,n) where m == -n:
            println("m==-n")
        case let(m,n):
            println("point3:(\(m),\(n))")
        }
        
        
        
//        控制转移语句
        /*
        - continue
        - break
        - fallthrough
        - return
        */
//        continue  continue告诉一个循环体立刻停止本次循环迭代，重新开始下次循环迭代
        let a1="12345678"
        var b11 = ""
        for Character in a1{
            switch Character{
                case "1":
                continue
                case "2":
                println("遇到2了")
                fallthrough
                println("滑到下一个语句中")
                case "3":
                println("找到3了")
                
                default:
                b11.append(Character)
                
            }
        }
        println(b11)
        
        
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

