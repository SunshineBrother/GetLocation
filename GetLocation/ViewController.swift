//
//  ViewController.swift
//  GetLocation
//
//  Created by Apple on 2018/11/5.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var localLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func getMessage(_ sender: Any) {
        
        LocationUtil.share.getCurrentPointLocation(isOnce: false) { (loc, errorMsg) in
            if errorMsg == nil {
                self.localLabel.text = String(format: "%f,%f", (loc?.coordinate.latitude)!,(loc?.coordinate.longitude)!)
            }
        }
        
        

    }

    @IBAction func getMessage2(_ sender: Any) {
        LocationUtil.share.getCurrentLocation(isOnce: false) { (loc, errorMsg) -> () in
            if errorMsg == nil {
                self.areaLabel.text = String(format: "%@", (loc?.name)!)
            }
            
        }
    }
}
