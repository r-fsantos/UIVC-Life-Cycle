//
//  SecondViewController.swift
//  UIVCLifeCycle
//
//  Created by Renato F. dos Santos Jr on 05/04/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    private func configureUI() {
        title = "SecondViewController"
        view.backgroundColor = .systemTeal
    }
}
