//
//  ViewController.swift
//  Happy Wallet
//
//  Created by Nihaal Manesia on 10/1/16.
//  Copyright © 2016 Nihaal Manesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var netLabel: UILabel!
    @IBOutlet weak var monthlyLabel: UILabel!
    @IBOutlet weak var expenseLabel: UILabel!
    @IBOutlet weak var moveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        netLabel.text = "$0.00"
        monthlyLabel.text = "$0.00"
        expenseLabel.text = "$0.00"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

