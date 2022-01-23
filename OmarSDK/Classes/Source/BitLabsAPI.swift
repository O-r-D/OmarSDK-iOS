//
//  BitLabsAPI.swift
//  OmarSDK
//
//  Created by Omar Raad on 22/01/2022.
//

import Foundation
import Alamofire

/// A class to manage connection with the Bitlabs API.
class BitLabsAPI {
	
	private let BASE_URL = "https://api.bitlabs.ai/v1"
	private let decoder: JSONDecoder
	
	init() {
		decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase
	}
	
	
	/// Checks whether there are available surveys in the backend.
	/// - Parameters:
	///   - token: The authentication token passed into the header of the request.
	///   - userId: The authentication user ID passed into the header of the request.
	///	  - onCompleted: The function containing the code to execute when the response is captured.
	///
	/// - Tag: checkSurveys
	func checkSurveys(token: String, userId: String, onCompleted:  @escaping OnCompleted) {
		let url = BASE_URL + "/client/check?platform=MOBILE"
		let headers: HTTPHeaders = [
			"X-Api-Token": token,
			"X-User-Id": userId]
		
		AF.request(url, method: .get, headers: headers)
			.responseDecodable(of: CheckSurveysResponse.self, decoder: decoder) { response in
				switch response.result {
				case .success(let checkSurveys):
					if let hasSurveys = checkSurveys.data?.hasSurveys {
						onCompleted(hasSurveys)
					} else {
						print(checkSurveys.error ??
								"Couldn't recieve error info... Trace ID: \(checkSurveys.traceId)")
					}
				case .failure(let error):
					print(error)
				}
		}
	}
}
