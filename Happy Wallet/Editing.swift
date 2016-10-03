//
//  Editing.swift
//  Happy Wallet
//
//  Created by Nihaal Manesia on 10/1/16.
//  Copyright © 2016 Nihaal Manesia. All rights reserved.
//

import UIKit

class Editing: UIViewController {
    
    var finalString = ""
    
    @IBOutlet weak var viewLabel: UILabel!
    
    @IBAction func oneButton(_ sender: AnyObject) {
        finalString = finalString + "1"
        viewLabel.text = finalString
    }
    
    @IBAction func twoButton(_ sender: AnyObject) {
        finalString = finalString + "2"
        viewLabel.text = finalString
    }
    
    @IBAction func threeButton(_ sender: AnyObject) {
        finalString = finalString + "3"
        viewLabel.text = finalString
    }
    
    @IBAction func fourButton(_ sender: AnyObject) {
        finalString = finalString + "4"
        viewLabel.text = finalString
    }
    
    @IBAction func fiveButton(_ sender: AnyObject) {
        finalString = finalString + "5"
        viewLabel.text = finalString
    }
    
    @IBAction func sixButton(_ sender: AnyObject) {
        finalString = finalString + "6"
        viewLabel.text = finalString
    }
    
    @IBAction func sevenButton(_ sender: AnyObject) {
        finalString = finalString + "7"
        viewLabel.text = finalString
    }
    
    @IBAction func eightButton(_ sender: AnyObject) {
        finalString = finalString + "8"
        viewLabel.text = finalString
    }
    
    @IBAction func nineButton(_ sender: AnyObject) {
        finalString = finalString + "9"
        viewLabel.text = finalString
    }
    
    @IBAction func zeroButton(_ sender: AnyObject) {
        finalString = finalString + "0"
        viewLabel.text = finalString
    }
    
    @IBAction func clearButton(_ sender: AnyObject) {
        finalString = ""
        viewLabel.text = finalString
    }
    
    @IBAction func dotButton(_ sender: AnyObject) {
        finalString = finalString + "."
        viewLabel.text = finalString
    }
    
    @IBOutlet weak var backButton: UIButton!
    
    
    @IBAction func moveBack(_ sender: AnyObject) {
//        navigationController?.popToRootViewController(animated: true)
        let myDouble = Double(finalString)
        let view = ViewController()
        view.setMonthlyBudget(monthlyBudget: myDouble!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
