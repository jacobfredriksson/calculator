//
//  CalculatorView.swift
//  caulculator
//
//  Created by Jacob Fredriksson on 2023-02-16.
//

import SwiftUI

struct CalculatorView: View {
    

    @State var sum = ""
    @State var firstValue = ""
    @State var secondValue = ""
    @State var operand = ""
    @State var firstPopulated = false
    

    var buttonTypes: [[ButtonTypes]] {
        [
            [.digit(7), .digit(8), .digit(9), .operation("/")],
            [.digit(4), .digit(5), .digit(6), .operation("x")],
            [.digit(1), .digit(2), .digit(3), .operation("-")],
            [.allClear, .digit(0), .operation("=")],
        ]
    }
    
    func test(buttonType: ButtonTypes, value: String)  {
    
         
         
//        print(buttonType)
        
        switch buttonType {
        case ButtonTypes.allClear:
            firstValue = ""
            secondValue = ""
            sum = ""
            firstPopulated = false
            return
        case ButtonTypes.digit:
            switch firstPopulated {
            case false:
                firstValue += value
                sum = firstValue
                print(firstValue, value)
                return
            default:
                secondValue += value
                sum = secondValue
                print(secondValue, value)
                return
                
            }

        case ButtonTypes.operation(let operation):
            firstPopulated = true
            sum = ""
//            print(sum, "sum", firstValue, "firstValue", secondValue, "secondvalue", operation)
            switch operation {
            case "x":
                operand = operation
                return
            case "/":
                operand = operation
                return
            case "-":
                operand = operation
                return
            
            case "=":
                calculateTotal(first: Int(firstValue) ?? 0, second: Int(secondValue) ?? 0, operand: operand
                )
            
            default:
                print("Something is weird here")
       
            }
        }
            
  
    }
    
    func calculateTotal(first: Int, second: Int, operand: String) {
        print(operand, "OPERAND")
        switch operand {
        case "x":
            sum = "\(first * second)"
            firstValue = "\(first * second)"
            secondValue = ""
            firstPopulated = true
        case "/":
            sum = "\(first / second)"
            firstValue = "\(first / second)"
            secondValue = ""
            firstPopulated = true
        case "-":
            sum = "\(first - second)"
            firstValue = "\(first - second)"
            secondValue = ""
            firstPopulated = true
        default:
            sum = "666 Error"
        }
    }
  
    var buttonPad: some View {
 
 
        VStack(spacing: Constants.padding) {
            ForEach(buttonTypes, id: \.self) { row in
                HStack(spacing: Constants.padding) {
                    ForEach(row, id: \.self) { btn in
                        Button(btn.title){
                            test(buttonType: btn.self, value: btn.title)
                            
                        }
                            .buttonStyle(CalculatorStyledButton(
                                isWide: btn.isWide,
                                size: 84,
                                backgroundColor: btn.backgroundColor))
                            
                    }
                }
            }
        }
    }


    
    private var displayText : some View {
        Text(sum == "" ? "0" : sum)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }

    var body: some View {
    
        VStack {
            Spacer()
            displayText
            buttonPad
        }
        .padding(Constants.padding)
        .background(.black)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
