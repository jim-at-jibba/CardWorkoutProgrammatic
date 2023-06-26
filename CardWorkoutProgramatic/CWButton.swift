//
//  CWButton.swift
//  CardWorkoutProgramatic
//
//  Created by James Best on 23/06/2023.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String, systemImageName: String) {
        super.init(frame: .zero) // this can be done because we are going to layout the button with autolayout in out VC
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = color
        configuration?.cornerStyle = .medium
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .trailing
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    

}
