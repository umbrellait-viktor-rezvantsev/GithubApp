//
//  BasicButton.swift
//  UIComponents
//
//  Created by Viktor Rezvantsev on 20.04.2023.
//

import UIKit

public class BaseButton: UIButton {
    
    init(title: String, backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        layer.cornerRadius = 10
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
