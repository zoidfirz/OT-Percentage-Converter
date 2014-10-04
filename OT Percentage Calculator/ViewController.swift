//
//  ViewController.swift
//  OT Percentage Calculator
//
//  Created by Jason Sutherland on 10/3/14.
//  Copyright (c) 2014 Jason Sutherland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterSalaryTextField: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var yearsWorked: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertButtonPressedAction(sender: UIButton) {
        
        var salary = (enterSalaryTextField.text as NSString).doubleValue
        answerLabel.hidden=false
        
        var salaryText = NSString(format:"%.2f percent",salary)
        
        answerLabel.text = convertsalary(enterSalaryTextField.text, yearsWorked.text)
        
        
    }
    
    
}


func convertsalary(enteredSalary: String, enteredYears:String)->String
{
    var yearlySalary:Double
    var answer = ""
    var earnedWage = (enteredSalary as NSString).doubleValue
    var hourlyWage = earnedWage/1975
    
    
    //put this in an if statement for EMt/Paramedic
    switch enteredYears{
    case "1":
        yearlySalary = 31931.00
    case "2":
        yearlySalary = 33740
    case "3":
        yearlySalary = 39764
    case "4", "5":
        yearlySalary = 45834
    default:
        yearlySalary = 45834
    }
    
    var hourlyEarned = yearlySalary/1975
    
    var test = hourlyWage - hourlyEarned
    
    answer = NSString(format: "%.2f",test)
    return answer
}