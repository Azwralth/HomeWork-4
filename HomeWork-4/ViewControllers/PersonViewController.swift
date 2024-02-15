//
//  PersonViewController.swift
//  HomeWork-4
//
//  Created by Владислав Соколов on 13.02.2024.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    var firstName: String!
    var lastName: String!
    var age: String!
    var job: String!
    var position: String!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameLabel.text = firstName
        firstNameLabel.textColor = .white
        
        lastNameLabel.text = lastName
        lastNameLabel.textColor = .white
        
        ageLabel.text = age
        ageLabel.textColor = .white
        
        jobLabel.text = job
        jobLabel.textColor = .white
        
        positionLabel.text = position
        positionLabel.textColor = .white
        
        setupNavigation()
        setBackgroundImage()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bioVC = segue.destination as? BioViewController {
            bioVC.descriptionText = user.person.description
            bioVC.user = user
        }
    }
    
    private func setupNavigation() {
        let backButton = UIBarButtonItem()
        backButton.title = "\(user.person.name) \(user.person.lastName)"
        backButton.tintColor = .white

        navigationItem.backBarButtonItem = backButton
        
        navigationItem.title = "\(user.person.name) \(user.person.lastName)"
        
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
}
