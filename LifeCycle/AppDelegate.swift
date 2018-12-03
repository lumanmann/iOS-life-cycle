//
//  AppDelegate.swift
//  LifeCycle
//
//  Created by WY NG on 3/12/2018.
//  Copyright © 2018 lumanman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // 此方法的階段介在Not running -> Inactive狀態
    // 在一開始 App 還沒點開 / App 已被關閉後，App 的狀態就會在這邊，此時 App 不會給在記憶體當中。
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print("didFinishLaunchingWithOptions: Not running -> Inactive")
        return true
    }
    
    
    // 此方法的階段約介在要從Active -> Inactive，也就是我們按下Home或是接電話的那一刻。
    // 當我們點開 App 後，App 的狀態就會轉為 Inactive，此時 App 開始做一點 SetUp，但是我們還不能使用它。很多 App 在此時都會使用一些準備畫面來渡過這個階段。
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        
        print("applicationWillResignActive: Active -> Inactive")
    }
    
    
    // 當我們把 App 關掉或換另一個 App，如按 Home 鍵後。App 就會進入 Inactive 狀態與 Background。此時，App 都還是在運作的狀態，但是 Interface 就不會進行更新或顯示。在幾秒之後，App 就會入進 Suspended 狀態。
    // 此方法的階段緊接在Will Resign Active方法後面，類似介在Background狀態到Suspended狀態，會有約五秒的時間儲存使用者資料，所以會在此方法寫入儲存使用者資料的程式碼。
    // PS: 注意：如果你的App支持後台運行，那麼當使用者關閉程式時，將不會調用applicationWillTerminate()方法，而是調用applicationDidEnterBackground() 方法。
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        print("applicationDidEnterBackground")
    }

    
     // 從後台要準備進入前台的active狀態，如果本來在後台運行，點下icon那刻起要執行的方法。
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        
        print("applicationWillEnterForeground")
        
    }
    
     // 一般會在Will Enter Foreground之前調用，從inactive -> active狀態。
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        print("applicationDidBecomeActive")
    }

    
    // 此方法在程序終止時（要從記憶體釋放時），使用的方法，一般也會在此寫下儲存資料的程式碼。
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        print("applicationWillTerminate")
    }


}

