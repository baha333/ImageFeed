//
//  WebViewViewController.swift
//  ImageFeed
//
//  Created by Bakhadir on 30.12.2023.
//

import UIKit
import WebKit

final class WebViewViewController: UIViewController {
    
    // MARK: - IOBOutlests
    @IBOutlet private var webView: WKWebView!
    @IBOutlet private var progressView: UIProgressView!
    
    // MARK: - Public Properties
    private var estimatedProgressObservation: NSKeyValueObservation?
    weak var delegate: WebViewViewControllerDelegate?
    
    override func viewWillAppear(_ animated: Bool) {
        estimatedProgressObservation = webView.observe(
            \.estimatedProgress,
             options: [],
             changeHandler: { [weak self] _, _ in
                 guard let self = self else { return }
                 self.updateProgress()
             })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        
        var urlComponents = URLComponents(string: UnsplashAuthorizeURLString)!
        
        urlComponents.queryItems = [
            URLQueryItem(name: "client_id", value: AccessKey),
            URLQueryItem(name: "redirect_uri", value: RedirectURL),
            URLQueryItem(name: "response_type", value: "code"),
            URLQueryItem(name: "scope", value: AccessScope)
        ]
        
        let url = urlComponents.url!
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

extension WebViewViewController: WKNavigationDelegate {
    private func updateProgress() {
        progressView.progress = Float(webView.estimatedProgress)
        progressView.isHidden = fabs(webView.estimatedProgress - 1.0) <= 0.0001
    }
    
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void
    ) {
        if let code = code(from: navigationAction) {
            delegate?.webViewViewController(self, didAuthenticateWithCode: code)
            decisionHandler(.cancel)
        } else {
            decisionHandler(.allow)
        }
    }
    
    private func code(from navigationAction: WKNavigationAction) -> String? {
        if
            let url = navigationAction.request.url,
            let urlComponents = URLComponents(string: url.absoluteString),
            urlComponents.path == "/oauth/authorize/native",
            let items = urlComponents.queryItems,
            let codeItem = items.first(where: { $0.name == "code" })
        {
            return codeItem.value
        } else {
            return nil
        }
    }
}

