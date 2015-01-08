//
//  ViewController.swift
//  CoreDataSwiftTests
//
//  Created by BARRET Frank (MORPHO) on 08/01/2015.
//  Copyright (c) 2015 Frank. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var appdel = UIApplication.sharedApplication().delegate as AppDelegate
        if let cus = appdel.coreDataHelper.createCustomer(){
            NSLog("customer cteated")
        }
        else{
            NSLog("could ot create customer")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

