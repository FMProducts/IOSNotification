//
//  ViewController.swift
//  IOSNotification
//
//  Created by ideal on 2/3/20.
//  Copyright © 2020 fmproduct.ios.localization. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func sendNotification(_ sender: UIButton){
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Notification"
        content.body = "Fariz Mamedow"
        content.sound = .default
        
        // Через 10 секунд
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "id", content: content, trigger: trigger)
            
        center.add(request) { (error) in
            if error != nil{
                print("Error: \(error?.localizedDescription ?? "error")")
            }
            else {
                print("complete")
            }
        }
    }
    
}

