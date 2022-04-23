//
//  ViewController.swift
//  UIVCLifeCycle
//
//  Created by Renato F. dos Santos Jr on 04/04/22.
//

import UIKit

class HomeViewController: UIViewController {

    lazy var goToSecondVCButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("go to SecondVC!", for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.layer.backgroundColor = UIColor.systemIndigo.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(goToSecondVC), for: .touchUpInside)
        return button
    }()

    // MARK: UIVC Life Cycle
    // MARK: loadView - WARNING: Never call this method directly.
    /// Set view's properties.
    /// Called when UIVC detects that view has nil reference.
    /// So one should configure it to create and deliver some reference to the view.
    /// Such reference can encapsulate/embed all views desired propertiers.
    /// Such practice implies/enables reuse, maintenence, testability, and so on.
    override func loadView() {
        super.loadView()
        print("loadView")
    }

    // MARK: viewDidLoad
    /// Called only once duringe entire UIVC life cycle
    ///  Called after the property view (inherited at some point from UIView) is fully loaded into the memory and, therefore, has a reference to himself.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        configureUI()
    }

    // MARK: viewWillAppear
    /// Called before view is fully visible any animation to be performed.
    /// Called every time view is called
    /// Can be used to hide some fields, disable buttons to prevent users actions before everything is good to go.
    /// Can be called as many times one desire to.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         print("viewWillAppear")
    }

    // MARK: viewDidAppear
    /// Called affter the view is presented.
    /// Can be used to start animations ?
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    // MARK: viewWillDisappear
    /// Called before the view be removed from views hierarchy
    /// Used to remove/stop animations and observables, for example.
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }

    // MARK: viewDidDisappear
    /// Called after the view  is removed from views hierarchy
    /// Used to set viewState or loading some data.
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    private func configureUI() {
        title = "UIVC Life Cycle"
        view.backgroundColor = .lightGray
        view.addSubview(goToSecondVCButton)
        NSLayoutConstraint.activate([
            goToSecondVCButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            goToSecondVCButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            goToSecondVCButton.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            goToSecondVCButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    @objc private func goToSecondVC() {
        let secondViewController = SecondViewController()
        if let _ = navigationController {
            navigationController?.pushViewController(secondViewController, animated: true)
        } else {
            present(secondViewController, animated: true, completion: nil)
        }
    }
}
