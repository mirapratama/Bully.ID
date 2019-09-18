//
//  YourSessionViewController.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/4/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import UIKit

class YourSessionViewController: UIViewController {
    @IBOutlet weak var currentChats: UIView!
    @IBOutlet weak var pastChats: UIView!
    @IBOutlet weak var premium: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func showContainer(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
            currentChats.alpha=1
            pastChats.alpha=0
            premium.alpha=0
        }else if(sender.selectedSegmentIndex == 1){
            currentChats.alpha=0
            pastChats.alpha=1
            premium.alpha=0
            
        }else if(sender.selectedSegmentIndex == 2){
            currentChats.alpha=0
            pastChats.alpha=0
            premium.alpha=1
            
        }

        }
    override func viewDidAppear(_ animated: Bool) {
        ViewHelper.hide(navigationController: navigationController)
    }
        
    }
