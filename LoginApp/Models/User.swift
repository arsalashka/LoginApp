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
				hobbies: ["Snowboarding", "Bicycle", "Guitar"],
				info: "Hi! My name is Arsalan. I'm learning iOS-development on swiftbook.ru. It's so hard, but so interesting!"
			)
		)
	}
}

struct Person {
	let firstName: String
	let lastName: String
	let hobbies: [String]
	let info: String
}
