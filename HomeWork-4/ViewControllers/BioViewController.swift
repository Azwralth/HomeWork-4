//
//  BioViewController.swift
//  HomeWork-4
//
//  Created by Владислав Соколов on 14.02.2024.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var descriptionLabel: UILabel!
    
    var user: User!
    
    var descriptionText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionLabel.text = descriptionText
        descriptionLabel.textColor = .white
        
        navigationItem.title = "\(user.person.name) \(user.person.lastName) Bio"
        
        setBackgroundImage()
    }
}
