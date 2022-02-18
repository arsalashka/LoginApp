//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Arsalan Balzhinimaev on 18.02.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

	@IBOutlet var userInfoLabel: UILabel!

	var firstName = ""
	var lastName = ""
	var hobbies = [""]
	var info = ""

    override func viewDidLoad() {
        super.viewDidLoad()

		navigationItem.title = "\(firstName) \(lastName)"
		userInfoLabel.text = "\(info)"
    }

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
		moreInfoVC.hobbies = hobbies
	}
}
