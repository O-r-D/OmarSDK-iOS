//
//  BitLabsAPI.swift
//  OmarSDK
//
//  Created by Omar Raad on 22/01/2022.
//

import Foundation
import Alamofire

class BitLabsAPI {
	
	private let BASE_URL = "https://api.bitlabs.ai/v1"
	
	func checkSurveys(token: String, userId: String) {
		let url = BASE_URL + "/client/check?platform=MOBILE"
		let headers: HTTPHeaders = [
			"X-Api-Token": token,
			"X-User-Id": userId]
		
		AF.request(url, method: .get, headers: headers).response{ response in
			debugPrint(response)
		}
	}
}
