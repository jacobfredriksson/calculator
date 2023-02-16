//
//  StyledButton.swift
//  caulculator
//
//  Created by Jacob Fredriksson on 2023-02-15.
//

import SwiftUI

struct CalculatorStyledButton: ButtonStyle {
    
    var isWide: Bool = false
    var size: CGFloat = 50
    var backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.font(.system(size: 32, weight: .medium))
            .frame(width: size, height: size)
            .frame(maxWidth: isWide ? .infinity: size, alignment: .center)
            .background(backgroundColor)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct StyledButton_Previews: PreviewProvider {
    static var previews: some View {
        let abutton = ButtonTypes.digit(5)
        
        Button(abutton.title){}.buttonStyle(CalculatorStyledButton(
            isWide: false,
            size: 100,
            backgroundColor: abutton.backgroundColor
        ))
        .padding()
    }
}


