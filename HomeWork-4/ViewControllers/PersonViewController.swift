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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameLabel.text = user.person.name
        firstNameLabel.textColor = .white
        
        lastNameLabel.text = user.person.lastName
        lastNameLabel.textColor = .white
        
        ageLabel.text = user.person.age
        ageLabel.textColor = .white
        
        jobLabel.text = user.person.job
        jobLabel.textColor = .white
        
        positionLabel.text = user.person.position
        positionLabel.textColor = .white
        
        setupNavigation()
        setBackgroundImage()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bioVC = segue.destination as? BioViewController {
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
