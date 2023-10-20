//
//  ViewController.swift
//  UILabel
//
//  Created by Haktan Can Taşkıran on 20.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Merhaba iOS!"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.blue
    }


}

