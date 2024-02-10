//
//  ProfileViewController.swift
//  HomeWork-4
//
//  Created by Владислав Соколов on 10.02.2024.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet var welcomeSmileyLabel: UILabel!
    @IBOutlet var UserNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserNameLabel.text = userName
        
        welcomeSmileyLabel.font = .systemFont(ofSize: 50)
        welcomeSmileyLabel.text = "\u{1F44B}"
        
        setBackgroundImage()
    }
    
    private func setBackgroundImage() {
        let backgroundImage = UIImageView(image: UIImage(named: "backgroundImage"))
        backgroundImage.frame = view.bounds
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
    }
}
