//
//  NewsViewController.swift
//  Runner
//
//  Created by Nguyen Duc Manh on 11/24/19.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    var coordinatorDelegate: NewsCoordinatorDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToFlutter(_ sender: UIButton) {
        if(coordinatorDelegate == nil ){
            print("coordinatorDelegate")
        } else {
             coordinatorDelegate?.navigateToFlutter()
        }
       
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
