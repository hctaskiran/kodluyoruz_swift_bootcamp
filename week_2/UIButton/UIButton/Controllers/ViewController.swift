//
//  ViewController.swift
//  UIButton
//
//  Created by Haktan Can Taşkıran on 21.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton(_ sender: UIButton) {
        sender.setTitleColor(UIColor.green, for: UIControl.State.normal
        )
        hiLabel.text = "HOSGELDIN!"
    }
    
}

