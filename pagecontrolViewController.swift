//
//  pagecontrolViewController.swift
//  Carousel
//
//  Created by Zhaochang He on 5/31/16.
//  Copyright © 2016 Zhaochang He. All rights reserved.
//

import UIKit

class pagecontrolViewController: UIViewController,UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        var page : Int = Int (round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
        
        pageControl.currentPageIndicatorTintColor = UIColor.purpleColor()
        
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
