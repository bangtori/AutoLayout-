//
//  ViewController.swift
//  LoginView
//
//  Created by 방유빈 on 2023/03/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(adjustButtonDynamicType), name: UIContentSizeCategory.didChangeNotification, object: nil)
    }
    
    @objc func adjustButtonDynamicType(){
        buttons.forEach{ (button) in
            button.titleLabel?.adjustsFontForContentSizeCategory = true
        }
    }

}

