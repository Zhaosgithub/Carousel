//
//  IntroViewController.swift
//  Carousel
//
//  Created by Zhaochang He on 5/30/16.
//  Copyright © 2016 Zhaochang He. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var introImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
       scrollView.contentSize = CGSize(width: 320, height: 1130)
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
