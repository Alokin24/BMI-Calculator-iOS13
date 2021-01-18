//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nikola Anastasovski on 17.1.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var BMI: Bmi?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / (pow(height, 2))
        if bmiValue < 18.5 {
            BMI = Bmi(value: bmiValue, advice: "Eat more pies.", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            BMI = Bmi(value: bmiValue, advice: "Fit as a fiddle.", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            BMI = Bmi(value: bmiValue, advice: "Eat less pies.", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
//        BMI = Bmi(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", BMI?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return BMI?.advice ?? "No advice. Error!"
    }
    
    func getColor() -> UIColor {
        return BMI?.color ?? #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
}
