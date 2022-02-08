//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Arsalan Balzhinimaev on 08.02.2022.
//

import UIKit

class LoginViewController: UIViewController {

	@IBOutlet var welcomeLabel: UILabel!
	@IBOutlet var logOutButton: UIButton!

	var userName: String!

	override func viewDidLoad() {
        super.viewDidLoad()
		
		welcomeLabel.text = "Welcome, \(userName ?? "")!"
		logOutButton.layer.cornerRadius = 10
    }
}
