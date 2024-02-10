//
//  ViewController.swift
//  HomeWork-4
//
//  Created by Владислав Соколов on 10.02.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let profileVC = segue.destination as? ProfileViewController {
            profileVC.userName = (userNameTextField.text ?? "") + "!"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == "11", passwordTextField.text == "11" else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login or password"
            )
            return false
        }
        return true
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        if let profileVC = segue.source as? ProfileViewController {
            profileVC.userName = userNameTextField.text
            userNameTextField.text = ""
            passwordTextField.text = ""
        }
    }
    
    @IBAction func showUserName() {
        showAlert(withTitle: "Oops!", andMessage: "Your User Name is 11 \u{263A}")
    }
    
    @IBAction func showPassword() {
        showAlert(withTitle: "Oops!", andMessage: "Your Password is 11 \u{263A}")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        })
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

