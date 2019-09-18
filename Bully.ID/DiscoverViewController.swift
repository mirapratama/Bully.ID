//
//  DiscoverViewController.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/11/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import UIKit

class DiscoverViewController: UIViewController {

    @IBOutlet weak var whatIsCyberbullying: UIView!
    @IBOutlet weak var events: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showComponents(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
            whatIsCyberbullying.alpha=1
            events.alpha=0
        }else if(sender.selectedSegmentIndex == 1){
            whatIsCyberbullying.alpha=0
            events.alpha=1
        }
    }
    
    

}
