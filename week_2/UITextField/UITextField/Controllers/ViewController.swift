//
//  ViewController.swift
//  UITextField
//
//  Created by Haktan Can Taşkıran on 21.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTexTField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBOutlet weak var loginActivity: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
    }

    @IBAction func didTapLoginButton(_ sender: UIButton) {
        if userNameTexTField.text == "hctaskiran", passwordTextField.isHidden {
            passwordTextField.isHidden = false
            errorLabel.isHidden = true
        } else {
            if userNameTexTField.text != "hctaskiran" {
                errorLabel.text = "Hata: Kullanici Adi bos birakilamaz!"
                errorLabel.isHidden = false
            } else if !(passwordTextField.isHidden), passwordTextField.text == "33231" {
                loginActivity.startAnimating()
                errorLabel.isHidden = true
            } else {
                errorLabel.text = "Hata: Sifre yanlis!"
                errorLabel.isHidden = false
            }
        }
    }
}

