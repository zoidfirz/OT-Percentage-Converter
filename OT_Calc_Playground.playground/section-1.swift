// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


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

