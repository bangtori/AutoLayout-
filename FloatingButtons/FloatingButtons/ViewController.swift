//
//  ViewController.swift
//  FloatingButtons
//
//  Created by 방유빈 on 2023/03/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let menuButton = MenuButton()
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(menuButton)
        menuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        menuButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }


}

