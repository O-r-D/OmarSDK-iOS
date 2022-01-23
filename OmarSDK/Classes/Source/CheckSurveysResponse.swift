//
//  CheckSurveysResponse.swift
//  OmarSDK
//
//  Created by Omar Raad on 23/01/2022.
//

import Foundation

/// The object to be decoded into from the JSON response of [checkSurveys](x-source-tag=//checkSurveys)
struct CheckSurveysResponse: Decodable {
	let data: CheckSurveysData?
	let error: CheckSurveysError?
	let status: String
	let traceId: String
}

struct CheckSurveysData: Decodable {
	let hasSurveys: Bool
}

struct CheckSurveysError: Decodable {
	let details: CheckSurveysDetails?
}

struct CheckSurveysDetails: Decodable {
	let http: String
	let msg: String
}
