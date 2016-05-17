//
//  ViewController.swift
//  Reminder
//
//  Created by Ross McIlwaine on 5/16/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var reminderTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.localNotificationFired), name: "Notification", object: nil)

    }
    
    func notifyWithReminder() {
        
        let notification = UILocalNotification()
        notification.alertTitle = "\(reminderTextField.text) Alert"
        notification.alertBody = "This is your alert"
        notification.fireDate = NSDate().dateByAddingTimeInterval(10)
        
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
        reminderTextField.text = ""
    }
    
    func localNotificationFired() {
        
        let alertController = UIAlertController(title: "Notification", message: "Being Notified", preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(action)
        
        presentViewController(alertController, animated: true, completion: nil)
    }

    @IBAction func setReminderButtonTapped(sender: AnyObject) {
        
        self.notifyWithReminder()
    }

}

