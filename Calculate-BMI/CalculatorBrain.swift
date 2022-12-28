//
//  CalculatorBrain.swift
//  Calculate-BMI
//
//  Created by Shashwat Panda on 27/12/22.
//

import Foundation
import UIKit
struct CalculatorBrain {
    var bmiValue:String = "0.00"
    var height:Float = 1.50
    var weight:Float = 100.00
    var bmi:Float = 0.00
    var advice:String = ""
    var color:UIColor = .white
    mutating func calculateBmi(){
        bmi = weight/(height * height)
        bmiValue = String(format: "%.2f", bmi)
    }
    mutating func returnAdvice(){
        if bmi < 18.5 {
            advice = "EAT SOME MORE SNACKS!"
            color = .systemPink
        } else if bmi > 24.9{
            advice = "PLAN A HEALTHY DIET"
            color = .systemRed
        } else {
            advice = "ENJOY!"
            color = .systemGreen
        }
    }
}
