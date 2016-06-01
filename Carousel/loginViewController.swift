//
//  loginViewController.swift
//  Carousel
//
//  Created by Zhaochang He on 5/30/16.
//  Copyright © 2016 Zhaochang He. All rights reserved.
//

import UIKit

class loginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollViewSignIn: UIScrollView!
    
    @IBOutlet weak var fieldParentView: UIView!
    
    @IBOutlet weak var buttonParentView: UIImageView!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    var initialY: CGFloat!
    var offset: CGFloat!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollViewSignIn.delegate = self
        
        scrollViewSignIn.contentSize = scrollViewSignIn.frame.size
        scrollViewSignIn.contentInset.bottom = 100
        
        initialY = fieldParentView.frame.origin.y
        offset = -100
       
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name:UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name:UIKeyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        fieldParentView.frame.origin.y = initialY + offset
            print("keyboardshow")
    
    }
    
    
    func keyboardWillHide(notification: NSNotification!) {
        
        fieldParentView.frame.origin.y = initialY
        
        print("keyboardshide")
      
        
    }
  
    
   
    @IBAction func didPressSignIn(sender: AnyObject) {
        
        loadingView.startAnimating()
      
        
        delay(2){
        
      
            if self.emailField.text == "zhao@gmail.com" {
                print("correct")
                
                self.performSegueWithIdentifier("loginSegue", sender: nil)
                
            } else{
                
                
                print("wrong")
                
                let alertController = UIAlertController(title: "Invalide email or Password", message: "Please enter a valid one", preferredStyle: .Alert)

                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                
                self.presentViewController(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }

                if self.emailField.text == "" || self.passwordField.text == "" {
                print("empty")
                    let alertController = UIAlertController(title: "Invalide email or Password", message: "Please enter a valid one", preferredStyle: .Alert)
                    
                    // create an OK action
                    let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                        // handle response here.
                    }
                    // add the OK action to the alert controller
                    alertController.addAction(OKAction)
                    
                    self.presentViewController(alertController, animated: true) {
                        // optional code for what happens after the alert controller has finished presenting
               
                }
                
            }
        
            self.loadingView.stopAnimating()
            
        }
        
            
        
    }
    
    
    

      /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}