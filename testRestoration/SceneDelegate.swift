//
//  SceneDelegate.swift
//  testRestoration
//
//  Created by James Tang on 13/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var vc: ViewController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("SceneDelegate willConnectTo")

         guard let winScene = (scene as? UIWindowScene) else { return }

         // Got some of this from WWDC2109 video 258
         window = UIWindow(windowScene: winScene)

        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController else { fatalError() }

        if let activity = connectionOptions.userActivities.first ?? session.stateRestorationActivity {
            print("SceneDelegate restoring from activity \(activity)")

            vc.continueFrom(activity: activity)

         } else {
             print("SceneDelegate failed to restore")
             vc.restorationIdentifier = "ViewController"
             self.window?.rootViewController = vc
             window?.makeKeyAndVisible()
         }
        self.vc = vc
    }

    func stateRestorationActivity(for scene: UIScene) -> NSUserActivity? {

        let activity = vc?.continuationActivity

        print("SceneDelegate stateRestorationActivity \(activity)")
        return activity
    }


}

