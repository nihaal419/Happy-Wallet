//
//  ViewController.swift
//  Happy Wallet
//
//  Created by Nihaal Manesia on 10/1/16.
//  Copyright © 2016 Nihaal Manesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var netLabel: UILabel!
    @IBOutlet weak var monthlyLabel: UILabel!
    @IBOutlet weak var expenseLabel: UILabel!
    @IBOutlet weak var moveButton: UIButton!

    let numberFormatter = NumberFormatter()
    
    var finalMonthly = ""
    
    var total = 0.0
    var expense = 0.0
    var budget = 0.0
    
    let date = Date()
    var calendar = Calendar.current
    //let unitFlags = Set<Calendar.Component>([.day, .month, .year])
    
    func timeManagement(){
        let month = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        let day = calendar.component(.day, from: date)
        
        //Set Day Label
        let stringDay = String(day)
        dayLabel.text = stringDay
        
        //Set Year Label
        let stringYear = String(year)
        yearLabel.text = stringYear
        
        //Set Month Label
        if(month == 1){
            monthLabel.text = "January"
        }
        else if(month == 2){
            monthLabel.text = "February"
        }
        else if(month == 3){
            monthLabel.text = "March"
        }
        else if(month == 4){
            monthLabel.text = "April"
        }
        else if(month == 5){
            monthLabel.text = "May"
        }
        else if(month == 6){
            monthLabel.text = "June"
        }
        else if(month == 7){
            monthLabel.text = "July"
        }
        else if(month == 8){
            monthLabel.text = "August"
        }
        else if(month == 9){
            monthLabel.text = "September"
        }
        else if(month == 10){
            monthLabel.text = "October"
        }
        else if(month == 11){
            monthLabel.text = "November"
        }
        else{
            monthLabel.text = "December"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setMonthlyBudget(monthlyBudget: Double){
        //Take NSNumber of monthly budget and format it for currency
        budget += monthlyBudget
        numberFormatter.numberStyle = .currency
        numberFormatter.locale = Locale.current
        let formattedNum = numberFormatter.string(from: NSNumber.init(value: monthlyBudget))
        monthlyLabel.text = formattedNum
    }
    
    func setExpense(newExpense: Double){
        expense += newExpense
    }
    
    func updateTotal() -> Double{
        self.total = self.budget - self.expense
        return self.total
    }
    
    func getMonthlyBudget() -> Double{
        return self.budget
    }
    
    func getExpense() -> Double{
        return self.expense
    }
    
    func getTotal() -> Double{
        return updateTotal()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeManagement()
        
        //monthlyLabel.text = "$0.00"
        // Do any additional setup after loading the view, typically from a nib.
    }

}

