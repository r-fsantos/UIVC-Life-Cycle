//
//  AppeTheme.swift
//  UIVCLifeCycle
//
//  Created by Renato F. dos Santos Jr on 05/04/22.
//

import Foundation
import UIKit

final class AppTheme {
    static func buildButton(with _type: UIButton.ButtonType,
                            title: String,
                            fontSize: CGFloat,
                            fontColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
