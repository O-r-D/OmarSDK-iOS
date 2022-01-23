//
//  WebViewController.swift
//  OmarSDK
//
//  Created by Omar Raad on 23/01/2022.
//

import Foundation
import WebKit

/// The ViewController actiing as a container for the WebView
class WebViewController: UIViewController {
	
	override func loadView() {
		super.loadView()
		
		view.backgroundColor = .blue
		
		let webView = WKWebView()
		view = webView

		webView.load(URLRequest(url: URL(string: "https://www.google.com/")!))
	}
}
