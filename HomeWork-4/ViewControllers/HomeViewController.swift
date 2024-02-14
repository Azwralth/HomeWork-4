//
//  ProfileViewController.swift
//  HomeWork-4
//
//  Created by Владислав Соколов on 10.02.2024.
//

import UIKit

final class HomeViewController: UIViewController {

    @IBOutlet var loginLabel: UILabel!
    @IBOutlet var userNameLabel: UILabel!
    
    var login: String!
    var fullName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginLabel.text = "Welcome, \(login ?? "")!"
        userNameLabel.text = fullName
        
        setBackgroundImage()
    }
}
