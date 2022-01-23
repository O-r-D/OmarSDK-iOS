//
//  OmarSDK.swift
//  OmarSDK
//
//  Created by Omar Raad on 22/01/2022.
//

import Foundation

/// A typealias to use multiple times as more functions are added to this class.
/// - Parameter A Bool to inform you whether you have available surveys. Will be true if you do.
public typealias OnCompleted = (Bool) -> ()

/// The main class including all the tools available to add SDK features into your code.
public class OmarSDK {
	
	private let token: String
	private let userId: String
	
	private let bitlabs = BitLabsAPI()
	
	public init(token: String, userId: String) {
		self.token = token
		self.userId = userId
	}
	
	/// Checks whether you have available surveys to display.
	/// - Parameter onCompleted: A function to which you add all the functionality you want to run upon receiving the result.
	public func checkForSurveys(_ onCompleted: @escaping OnCompleted) {
		bitlabs.checkSurveys(token: token, userId: userId, onCompleted: onCompleted)
	}
	
	/// Displays a WebView to show your surveys, it's defaulted to google homepage at the moment.
	/// - Parameter parent: The parent view controller which will present this WebView.
	///
	/// # Example:
	///  `showSurveys(parent: self)`
	public func showSurveys(parent: UIViewController) {
		let viewController = WebViewController()
		parent.present(viewController, animated: true)
	}
}
