//
//  CalculatorModel.swift
//  caulculator
//
//  Created by Jacob Fredriksson on 2023-02-20.
//

import Foundation

final class CalculatorModel: ObservableObject {
    
    @Published var sum = ""
    @Published var firstValue = ""
    @Published var secondValue = ""
    @Published var operand = ""
    @Published var firstPopulated = false
    
    
    func calcButtonOperation(buttonType: ButtonTypes)  {
        
        switch buttonType {
        case .allClear:
            firstValue = ""
            secondValue = ""
            sum = ""
            firstPopulated = false
            return
        case .digit:
            switch firstPopulated {
            case false:
                firstValue += buttonType.title
                sum = firstValue
                return
            default:
                secondValue += buttonType.title
                sum = secondValue
                return
                
            }

        case .operation(let operation):
            firstPopulated = true
            sum = ""
            switch operation {
            case "x", "/", "-":
                operand = operation
                return
            
            case "=":
                calculateResult(first: Float(firstValue) ?? 0, second: Float(secondValue) ?? 0, operand: operand
                )
            
            default:
                print("Error, operator does not exist")
       
            }
        }
            
  
    }
    
    func calculateResult(first: Float, second: Float, operand: String) {
        switch operand {
            
        case "x":
            let result = (first * second as NSNumber).stringValue
            sum = result
            firstValue = result
            secondValue = ""
            firstPopulated = true
        
        case "/":
            let result = (first / second as NSNumber).stringValue
            sum = result
            firstValue = result
            secondValue = ""
            firstPopulated = true
        case "-":
            let result = (first - second as NSNumber).stringValue
            sum = result
            firstValue = result
            secondValue = ""
            firstPopulated = true
        default:
            sum = "666 Error"
        }
    }
}
