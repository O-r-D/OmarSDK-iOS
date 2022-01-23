//
//  CheckSurveysResponse.swift
//  OmarSDK
//
//  Created by Omar Raad on 23/01/2022.
//

import Foundation

struct CheckSurveysResponse: Codable {
	let data: CheckSurveysData?
	let error: CheckSurveysError?
	let status: String
	let traceId: String
}

struct CheckSurveysData: Codable {
	let hasSurveys: Bool
}

struct CheckSurveysError: Codable {
	let details: CheckSurveysDetails?
}

struct CheckSurveysDetails: Codable {
	let http: String
	let msg: String
}
