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
	private let decoder: JSONDecoder
	
	init() {
		decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase
	}
	
	
	func checkSurveys(token: String, userId: String) {
		let url = BASE_URL + "/client/check?platform=MOBILE"
		let headers: HTTPHeaders = [
			"X-Api-Token": token,
			"X-User-Id": userId]
		
		AF.request(url, method: .get, headers: headers)
			.responseDecodable(of: CheckSurveysResponse.self, decoder: decoder) { response in
				switch response.result {
				case .success(let checkSurveys):
					print(checkSurveys)
				case .failure(let error):
					print(error)
				}
		}
	}
}
