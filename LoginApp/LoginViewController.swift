//
//  ViewController.swift
//  LoginApp
//
//  Created by Arsalan Balzhinimaev on 08.02.2022.
//

import UIKit

class LoginViewController: UIViewController {

	@IBOutlet var userNameTF: UITextField!
	@IBOutlet var passwordTF: UITextField!

	@IBOutlet var loginButton: UIButton!

	private let login = "qwe"
	private let password = "123"

	override func viewDidLoad() {
		super.viewDidLoad()

		// Log In Button
		loginButton.layer.cornerRadius = 10
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
		welcomeVC.userName = login
	}

	@IBAction func logInButtonPressed() {

		if userNameTF.text != login || passwordTF.text != password {
			showAlert(with: "Oops!", and: "User Name or Password is wrong.\nTry again.")
			passwordTF.text = ""
		}
	}

	@IBAction func forgotButtonsPressed(_ sender: UIButton) {
		if sender.tag == 0 {
			showAlert(with: "Oh my god!", and: "Your user name is \(login)")
		} else if sender.tag == 1 {
			showAlert(with: "Really?", and: "Password is \(password)")
		}
	}

	@IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
		userNameTF.text = ""
		passwordTF.text = ""
	}
	
}

// MARK: - Private Methods
extension LoginViewController {
	private func showAlert(with title: String, and message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "Ok", style: .default)
		alert.addAction(okAction)
		present(alert, animated: true)
	}
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
	// hide keyboard when tap on display
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesBegan(touches, with: event)
		view.endEditing(true)
	}

	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		if textField == userNameTF {
			passwordTF.becomeFirstResponder()
		} else {
			logInButtonPressed()
			performSegue(withIdentifier: "showWelcomeVC", sender: nil)
		}
		return true
	}
}
