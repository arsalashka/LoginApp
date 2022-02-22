//
//  MoreInfoViewController.swift
//  LoginApp
//
//  Created by Arsalan Balzhinimaev on 18.02.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

	@IBOutlet var snowboardImage: UIImageView!
	@IBOutlet var guitarImage: UIImageView! {
		didSet {
//			guitarImage.layer.cornerRadius = guitarImage.frame.width / 2
		}
	}
	
	@IBOutlet var label: UILabel!

	var user: User!


    override func viewDidLoad() {
        super.viewDidLoad()

		label.text = getHobbies()

		snowboardImage.image = UIImage(named: user.person.images[0])
		guitarImage.image = UIImage(named: user.person.images[1])
    }

	private func getHobbies() -> String {

		var result = ""
		for hobby in user.person.hobbies {
			result += hobby

			if hobby != user.person.hobbies.last {
				result += ", "
			}
		}
		return result
	}
}
