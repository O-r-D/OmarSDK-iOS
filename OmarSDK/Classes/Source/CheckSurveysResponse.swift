//
//  CheckSurveysResponse.swift
//  OmarSDK
//
//  Created by Omar Raad on 23/01/2022.
//

import Foundation

struct CheckSurveysResponse: Codable {
	let data: CheckSurveysData
	let error: CheckSurveysError
	let status: String
	let trace_id: String
}

struct CheckSurveysData: Codable {
	let has_surveys: Bool
}

struct CheckSurveysError: Codable {
	let details: CheckSurveysDetails
}

struct CheckSurveysDetails: Codable {
	let http: String
	let msg: String
}
