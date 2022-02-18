//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by Arsalan Balzhinimaev on 18.02.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

	@IBOutlet var label: UILabel!

	var hobbies = [""]

    override func viewDidLoad() {
        super.viewDidLoad()

		label.text = getHobbies()
    }

	private func getHobbies() -> String {

		var result = ""
		for hobby in hobbies {
			result += hobby

			if hobby != hobbies.last {
				result += ", "
			}
		}
		return result
	}
}
