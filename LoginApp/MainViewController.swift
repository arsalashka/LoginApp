//
//  ViewController.swift
//  LoginApp
//
//  Created by Arsalan Balzhinimaev on 08.02.2022.
//

import UIKit

class MainViewController: UIViewController {

	@IBOutlet var userNameTF: UITextField!
	@IBOutlet var passwordTF: UITextField!

	@IBOutlet var loginButton: UIButton!

	let login = "qwe"
	let password = "123"

	override func viewDidLoad() {
		super.viewDidLoad()

		// Log In Button
		loginButton.layer.cornerRadius = 10
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		let navigationController = segue.destination
		navigationController.modalPresentationStyle = .fullScreen
		
		guard let loginVC = segue.destination as? LoginViewController else { return }
		loginVC.userName = userNameTF.text
	}

	@IBAction func logInButtonPressed() {

		if userNameTF.text != login || passwordTF.text != password {
			showAlert(with: "Oops!", and: "User Name or Password is wrong.\nTry again.")
			passwordTF.text = ""
		}
	}

	@IBAction func forgotUserNameButtonPressed() {
		showAlert(with: "Oh my god!", and: "Your user name is \(login)")
	}
	
	@IBAction func forgotPasswordButtonPressed() {
		showAlert(with: "Really?", and: "Password is \(password)")
	}

	@IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
		userNameTF.text = ""
		passwordTF.text = ""
	}
	
}

// MARK: - Private Methods

extension MainViewController {
	private func showAlert(with title: String, and message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "Ok", style: .default)
		alert.addAction(okAction)
		present(alert, animated: true)
	}
}
