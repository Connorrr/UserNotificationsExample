//
//  ForegroundNotification.swift
//  NotificationTest
//
//  Created by Connor Reid on 3/2/17.
//  Copyright © 2017 Connor Reid. All rights reserved.
//

import UIKit
import UserNotifications

extension UIViewController: UNUserNotificationCenterDelegate {
    
    public func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Swift.Void) {
        print("This is the Foreground Notification")
        completionHandler( [.alert, .badge, .sound])
        //print("\(notification.request.content.userInfo[AnyHashable("snooze") as! Bool]!)")
        print("\(notification.request.content.userInfo[AnyHashable("sound")]!)")
        //print("\(notification.request.content.userInfo[AnyHashable("index") as! Int]!)")
    }
    
    public func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Swift.Void) {
        print("This is the background notification")
        completionHandler()
        print("\(response.notification.request.content.userInfo)")
    }
    
}
