//
//  ViewController.swift
//  ListApp
//
//  Created by Haktan Can Taşkıran on 22.10.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell",  for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    @IBAction func didAddBarButtonItemTapped (_ sender: UIBarButtonItem) {
        presentAddAlert()
    }
    
    func presentAddAlert() {
        let alertController = UIAlertController(title: "Yeni Eleman Ekle",
                                                message: nil,
                                                preferredStyle: .alert)
        
        let defaultButton = UIAlertAction(title: "Ekle",
                                          style: .default,
                                          handler: {_ in
            
        })
        
        let cancelButton = UIAlertAction(title: "Vazgec", style: .cancel)
        
        // butona text field ekleme
        alertController.addTextField()
        
        alertController.addAction(cancelButton)
        alertController.addAction(defaultButton)
        present(alertController, animated: true)
        
        presentAlert(title: "Yeni Eleman Ekle",
                     message: nil,
                     defaultButtonTitle: "Ekle",
                     defaultButtonHandler: {_ in
            let text = alertController.textFields?.first?.text
            
            if text != "" {
                self.data.append((text)!)
                self.tableView.reloadData()
            } else {
                self.presentWarningAlert()
            }
        },
                     cancelButtonTitle: "Vazgec")
    }
    
    func presentWarningAlert() {
        presentAlert(title: "Uyari!",
                     message: "Liste bos birakilamaz",
                     preferredStyle: .alert,
                     cancelButtonTitle: "Tamam")
    }
    
    func presentAlert(title: String?,
                      message: String?,
                      preferredStyle: UIAlertController.Style = .alert,
                      defaultButtonTitle: String? = nil,
                      defaultButtonHandler:((UIAlertAction) -> Void)? = nil,
                      cancelButtonTitle: String?) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: preferredStyle)
        
        let defaultButton = UIAlertAction(title: defaultButtonTitle,
                                          style: .default,
                                          handler: defaultButtonHandler
        )
        
        let cancelButton = UIAlertAction(title: cancelButtonTitle,
                                         style: .cancel)
        
        alertController.addAction(defaultButton)
        alertController.addAction(cancelButton)
        present(alertController, animated: true)
    }
 }

