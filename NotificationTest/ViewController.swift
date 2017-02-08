//
//  ViewController.swift
//  NotificationTest
//
//  Created by Connor Reid on 3/2/17.
//  Copyright © 2017 Connor Reid. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let center = UNUserNotificationCenter.current()
        center.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated. 
    }

    @IBAction func pressedButton(_ sender: UIButton) {
 
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "Hello!", arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: "Hello_message_body", arguments: nil)
        content.sound = UNNotificationSound.default()
        content.categoryIdentifier = "alarmCategory"
        
        content.userInfo = ["snooze":false,"sound":"Bing Bong Noise!","index":1]
        
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest.init(identifier: "notify-test", content: content, trigger: trigger)
        
        let center = UNUserNotificationCenter.current()
        center.add(request)
    }

}

