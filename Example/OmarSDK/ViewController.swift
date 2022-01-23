//
//  ViewController.swift
//  OmarSDK
//
//  Created by O-r-D on 01/22/2022.
//  Copyright (c) 2022 O-r-D. All rights reserved.
//

import UIKit
import OmarSDK

class ViewController: UIViewController {
	
	let omarSDK = OmarSDK(token: "a8ef5ffc-f8eb-4186-8652-637f08920ddc", userId: "0")
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		omarSDK.checkForSurveys { result in print(result) }
    }
	
	override func viewDidAppear(_ animated: Bool) {
		omarSDK.showSurveys(parent: self)
	}
}

