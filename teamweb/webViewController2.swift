//
//  webViewController2.swift
//  h
//
//  Created by 王韬 on 2020/9/8.
//  Copyright © 2020 王韬. All rights reserved.
//

import UIKit
import WebKit
class webViewController2: UIViewController, UIWebViewDelegate, WKNavigationDelegate, UIGestureRecognizerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
        webView.navigationDelegate = self
        let url = URL(string: "https://www.weibo.com/funplusx?is_hot=1")
        let urlRequest = NSURLRequest(url: url!)
        webView.load(urlRequest as URLRequest)
        view.addSubview(webView)
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}
