//
//  ViewController.swift
//  testRestoration
//
//  Created by James Tang on 13/5/2020.
//  Copyright © 2020 James Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerRestoration {

    @IBOutlet weak var textField: UITextField!
    var text: String?

    var continuationActivity: NSUserActivity {
        let activity = NSUserActivity(activityType: "restoration")
        activity.persistentIdentifier = UUID().uuidString
        if let text = text {
            activity.addUserInfoEntries(from: ["textField.text": text])
        }
        return activity
    }

    func continueFrom(activity: NSUserActivity) {
        let text = activity.userInfo?["textField.text"] as? String
        self.text = text
    }


    static func viewController(withRestorationIdentifierPath identifierComponents: [String], coder: NSCoder) -> UIViewController? {
        return ViewController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.text = text
    }
//
//    override func encodeRestorableState(with coder: NSCoder) {
//        print("ViewController encodeRestorableState")
//
//        super.encodeRestorableState(with: coder)
//
//        coder.encode(text, forKey: "textField.text")
//    }
//
//    override func decodeRestorableState(with coder: NSCoder) {
//        print("ViewController decodeRestorableState")
//
//        super.decodeRestorableState(with: coder)
//
//        text = coder.decodeObject(forKey: "textField.text") as? String
//        textField.text = text
//    }
}

