//
//  ViewController.swift
//  3 Card Monte
//
//  Created by Ross McIlwaine on 5/16/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        presentAlertViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func presentAlertViewController() {
        
        let alertController = UIAlertController(title: "Find The Queen", message: "Can you find her?", preferredStyle: .Alert)
        
        let optionOneAction = UIAlertAction(title: "Option 1", style: .Default) { alert in
            self.youWinAlert()
        }
        let optionTwoAction = UIAlertAction(title: "Option 2", style: .Default) { alert in
            self.youLoseAlert()
        }
        let doesNotCareAction = UIAlertAction(title: "I don't Care", style: .Default) { alert in
            self.doesNoteCareAlert()
        }
        
        alertController.addAction(optionOneAction)
        alertController.addAction(optionTwoAction)
        alertController.addAction(doesNotCareAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func youWinAlert() {
        
        let alertController = UIAlertController(title: "YOU WON!!", message: "Want to try your luck again?", preferredStyle: .Alert)
        let playAgainAction = UIAlertAction(title: "Play Again", style: .Default) { alert in
            self.presentAlertViewController()
        }
        let noMoreAction = UIAlertAction(title: "No Thanks", style: .Destructive) { alert in
            //
        }
        
        alertController.addAction(playAgainAction)
        alertController.addAction(noMoreAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func youLoseAlert() {
        
        let alertController = UIAlertController(title: "YOU LOSE!!", message: "Want to try your luck again?", preferredStyle: .Alert)
        let playAgainAction = UIAlertAction(title: "Play Again", style: .Default) { alert in
            self.presentAlertViewController()
        }
        let noMoreAction = UIAlertAction(title: "No Thanks", style: .Destructive) { alert in
            //
        }
        
        alertController.addAction(playAgainAction)
        alertController.addAction(noMoreAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func doesNoteCareAlert() {
        let alertController = UIAlertController(title: "CHANGE THAT ATTITUDE", message: "Now that you changed your mood, play again?", preferredStyle: .Alert)
        let playAgainAction = UIAlertAction(title: "Play Again", style: .Default) { alert in
            self.presentAlertViewController()
        }
        let noMoreAction = UIAlertAction(title: "No Thanks", style: .Destructive) { alert in
            //
        }
        
        alertController.addAction(playAgainAction)
        alertController.addAction(noMoreAction)
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func playAgainButtonTapped(sender: AnyObject) {
        
        self.presentAlertViewController()
    }
    
}

