//
//  ButtonTypes.swift
//  caulculator
//
//  Created by Jacob Fredriksson on 2023-02-15.
//

import Foundation
import SwiftUI


enum ButtonTypes: Hashable {
    case digit(_ number:Int)
    case operation(_ operation: String)
    case allClear
    
    var backgroundColor: Color {
        switch self {
        case .digit:
            return .secondary
        default:
            return .orange
        }
    }
    
    var title: String {
        switch self {
        case .digit(let number):
            return "\(number)"
        case .operation(let operation):
            return operation
        case .allClear:
            return "AC"
        }
    }
    
    var isWide: Bool {
        return self == .digit(0)
    }
    
//    var operationType: String {
//        switch self {
//        case .digit(let number):
//            return number
//        case .operation(let operation):
//            return operation
//        case .allClear
//            return
//
//        }
//    }
}


//First I need to update the texfield value with value 1
//Then on click on a operation I save the value 1 in a state.
//When I saved a value in value 1 I also clear the value in textfield and reset to 0.
//Then when I fill in values in the field again these are set to second value.
//Then when I press equal I take first value (operation) second value and update the textfield.
//On AC I clear all states. 

