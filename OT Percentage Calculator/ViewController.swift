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
    @IBAction func convertButtonPressedAction(sender: UIButton)
    {//method for converting bls salary
        
        var salary = (enterSalaryTextField.text as NSString).doubleValue
        answerLabel.hidden=false
        
        var salaryText = NSString(format:"%.2f percent",salary)
        
        answerLabel.text = convertsalaryEMT(enterSalaryTextField.text, yearsWorked.text)
        
        
    }
    
    
    @IBAction func convertMedicButtonPressed(sender: UIButton)
    {//method for converting medic salary
    }
    
}


func convertsalaryEMT(enteredSalary: String, enteredYears:String)->String
{
    var yearlySalary:Double
    var answer = ""
    var earnedWage = (enteredSalary as NSString).doubleValue
    var hourlyWage = earnedWage/1975
    
    
       switch enteredYears{
    case "1":
        yearlySalary = 31931.00
    case "2":
        yearlySalary = 33740
    case "3":
        yearlySalary = 39764
    case "4", "5","6":
        yearlySalary = 45834
    case "7","8","9":
        yearlySalary = 47904
        case "10","11","12","13","14":
        yearlySalary = 49328
        case "15","16","17","18","19":
        yearlySalary = 49928
        case "20","21","22","23","24","25":
        yearlySalary = 50528
    default:
        yearlySalary = 50528
        

    }
    
    var hourlyEarned = yearlySalary/1975
    
    var test = hourlyWage - hourlyEarned
    
    answer = "\(test)"
    return answer
}


func convertSalaryMEDIC(enteredSalary:String, enteredYears:String, enteredPayWeek:String)->String
{//add neccerssary salary information, implement an if statement for even weeks.. 
    
    var answer=""
    return answer;
}
