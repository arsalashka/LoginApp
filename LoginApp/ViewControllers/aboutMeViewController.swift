//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Arsalan Balzhinimaev on 18.02.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

	@IBOutlet var userInfoLabel: UILabel!

	var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

		navigationItem.title = "\(user.person.firstName) \(user.person.lastName)"
		userInfoLabel.text = "\(user.person.info)"
    }

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
		moreInfoVC.user = user
	}
}
