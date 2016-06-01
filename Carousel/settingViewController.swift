//
//  settingViewController.swift
//  Carousel
//
//  Created by Zhaochang He on 5/31/16.
//  Copyright © 2016 Zhaochang He. All rights reserved.
//

import UIKit

class settingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var crossicon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.contentSize = CGSize(width: 320, height: 750)
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didPressCross(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
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
