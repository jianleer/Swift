//
//  AppDelegate.swift
//  Collection Types
//
//  Created by tbtCocoaLee on 15/3/30.
//  Copyright (c) 2015年 Cocoa Lee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
//        Swift中的集合类型
//        数组&字典  数组有序字典无序
//        Swift中的数组是类型安全,包含的类型必须明确
    
        
//        1 数组
        
        
        var shoppingList : [String] = ["Eggs","Milk"]
//        也可以这样写，Swift会自动类型推断
        var shopingList1 = ["Eggs","Milk"]
        
        
//        2 访问和修改数组
        
        println("The shoping list contains \(shopingList1.count) items")
        
//        检查数组是否为空
        if  shopingList1.isEmpty{
            println("The shoping list is empty")
        }else
        {
            println("the shop list is not empty")
        }
        
//        可以通过append方法在数组后面添加数据项
        shopingList1.append("Flour ")
//        shopingList1 += "Baking Power"
        shopingList1 += ["test","test1"]
//        通过下标来获取数据
       var  a1 = shopingList1[0]
        println(a1)
//        通过索引改变只
        shopingList1[1] = "添加的"
        println(shopingList1)
        
// 利用下标改变一系列的数据值
        shopingList1[1..<2] = ["wakak","hehe"]
        
//        插入数据
        shopingList1.insert("ggggg", atIndex: 0)
       println(shopingList1)
//       移除数据
        let mapleSyrup = shopingList1.removeAtIndex(0)
//       移除数组最后一相
        let test = shopingList1.removeLast()
        println(shopingList1)
        
//       数组的遍历
        for item in shopingList1{
            println(item)
        }
//       当我们需要每个数据相的值和索引值    enumerate反回一个由每一项数据索引值和数据值组成的键值对
        for (index,value) in enumerate(shopingList1)
        {
            println("item \(index ):\(value)")
        }
//       4 创建并构造一个数组
          var someInts = [Int]()
       someInts.append(3)
        someInts.append(2)
        println(someInts)
        someInts = []
        println(someInts)
        
//        创建一个特定大写并且所有数据都被默认构造
        var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
        println(threeDoubles)
//因为推断类型的存在，也可以不用特别指定类型
    var yarray = Array(count: 3, repeatedValue: 4.3)
        println(yarray)
        
//        使用加号合并两个相同类型的数组
        var sixArray = threeDoubles + yarray
        println(sixArray)
        
        
//        5 字典＝＝＝＝＝＝＝＝＝＝＝＝＝
        var airpoint:Dictionary = ["TYO":"Tokyo","DUB":"Dublin"]
        var airports =  ["TYO":"Tokyo","DUB":"Dublin"]
        
//        读取和修改字典
//        可通过cout来获取数据项数量
//        通过下表来添加新的数据
//         通过下标来改变树数值
        airpoint["TYO"] = "hahahh"
        println(airpoint)
        
//        通过updateValue（forKey:）方法查找特定的值
        let city = airpoint.updateValue("fffff", forKey: "TYO")
        if (city != nil) {
            println("修改成功")
        }else
        {
          println("修改失败")
        }
        
//        通过nil移除一个数值
        airpoint["HK"] = "香港"
        airpoint["HK"] = nil
        println(airpoint)
        println(airpoint["HK"])
        
        
//        通过RemovedValueForKey方法移除数值
        if let rm = airpoint.removeValueForKey("TYO"){
            println("移除成功")
        }else{
            println("移除失败")
        }
        
        airports.removeAll(keepCapacity: false)
        
        println(airports)
        
//        字典遍历
        var dic = ["1":"美国","2":"中国","3":"日本"]
        for (num,va) in dic{
            println("\(num):\(va)")
            if num == "2"{
                println("匹配到中国")
            }
        }
        
        
        println(dic.keys)
        
        for keyy in dic.keys{
            println(keyy)
        }
        
        for valuess in dic.values{
            println(valuess)
        }
        
//        创建一个空字典
////        var em = Dictionary()  //
//        var nameofinteger = Dictionary()
//        nameofinteger[16] = "sixteen"
//        println(nam)
        
        
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

