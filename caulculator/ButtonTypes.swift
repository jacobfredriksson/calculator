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

}

