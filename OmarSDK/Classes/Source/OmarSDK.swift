//
//  OmarSDK.swift
//  OmarSDK
//
//  Created by Omar Raad on 22/01/2022.
//

import Foundation

public class OmarSDK {
	
	private let token: String
	private let userId: String
	
	private let bitlabs = BitLabsAPI()
	
	public init(token: String, userId: String) {
		self.token = token
		self.userId = userId
	}
	
	public func checkForSurveys() {
		bitlabs.checkSurveys(token: token, userId: userId)
	}
	
	public func showSurveys(parent: UIViewController) {
		let viewController = WebViewController()
		parent.present(viewController, animated: true)
	}
}
