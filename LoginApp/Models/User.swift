//
//  User.swift
//  LoginApp
//
//  Created by Arsalan Balzhinimaev on 17.02.2022.
//

struct User {
	let login: String
	let password: String
	let person: Person

	static func getUser() -> User {

		User(
			login: "qwe",
			password: "123",
			person: Person(
				firstName: "Arsalan",
				lastName: "Balzhinimaev",
				age: 39,
				hobbies: ["Snowboarding", "Bicycle", "Guitar"]
			)
		)
	}
}

struct Person {
	let firstName: String
	let lastName: String
	let age: Int
	let hobbies: [String]
}
