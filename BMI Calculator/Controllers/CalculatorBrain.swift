//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Beniamin on 25/08/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//
import UIKit


struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(_ weight : Float, _ height : Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? " "
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
}
