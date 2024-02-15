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
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginLabel.text = "Welcome, \(login ?? "")!"
        userNameLabel.text = "My name is \(user.person.name) \(user.person.lastName)"
        
        setBackgroundImage()
    }
}
