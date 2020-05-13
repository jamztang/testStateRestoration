//
//  AppDelegate.swift
//  testRestoration
//
//  Created by James Tang on 13/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func application(_ application: UIApplication,
                              shouldRestoreApplicationState coder: NSCoder) -> Bool {
        return true
    }


//    func application(_ application: UIApplication, willEncodeRestorableStateWith coder: NSCoder) {
//        print("AppDelegate willEncodeRestorableStateWith")
//        if #available(iOS 13, *) {
//
//        } else {
//        // Trigger saving of the root view controller
////            coder.encode(self.window?.rootViewController, forKey: "root")
//        }
//    }
//
//    func application(_ application: UIApplication, didDecodeRestorableStateWith coder: NSCoder) {
//        print("AppDelegate didDecodeRestorableStateWith")
//    }
//
//    func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
//        print("AppDelegate shouldSaveApplicationState")
//        if #available(iOS 13, *) {
//            return false
//        } else {
//            return true
//        }
//    }
}

