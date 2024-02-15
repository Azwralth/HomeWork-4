//
//  ViewController.swift
//  HomeWork-4
//
//  Created by Владислав Соколов on 10.02.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getProfileUser()
    
    override func viewDidLoad() {
        userNameTextField.text = user.login
        passwordTextField.text = user.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBar = segue.destination as? TabBarViewController
        
        tabBar?.viewControllers?.forEach { viewController in
            if let homeVC = viewController as? HomeViewController {
                homeVC.login = user.login
                homeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let profileVC = navigationVC.topViewController as? PersonViewController
                profileVC?.firstName = user.person.name
                profileVC?.lastName = user.person.lastName
                profileVC?.age = user.person.age
                profileVC?.job = user.person.job
                profileVC?.position = user.person.position
                profileVC?.user = user
            } else if let bioVC = segue.destination as? BioViewController {
                bioVC.descriptionText = user.person.description
                bioVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login or password") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        return true
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
            userNameTextField.text = ""
            passwordTextField.text = ""
        }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your User Name is \(user.login) ☺️")
        : showAlert(withTitle: "Oops!", andMessage: "Your Password is \(user.password) ☺️")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


// MARK: - Setup default background

extension UIViewController {
    func setBackgroundImage() {
        let backgroundImage = UIImageView(image: UIImage(named: "backgroundImage"))
        backgroundImage.frame = view.bounds
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
    }
}
