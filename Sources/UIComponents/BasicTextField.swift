//
//  BasicTextField.swift
//  UIComponents
//
//  Created by Viktor Rezvantsev on 20.04.2023.
//

import UIKit

public class BasicTextField: UITextField {
    
    init(placeholder: String, borderColor: UIColor) {
        super.init(frame: .zero)
        
        self.placeholder = placeholder
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
