//
//  WebViewViewControllerDelegate.swift
//  ImageFeed
//
//  Created by Bakhadir on 07.01.2024.
//

import Foundation

protocol WebViewViewControllerDelegate: AnyObject {
    func webViewViewController(_ vc: WebViewViewController, didAuthenticateWithCode code: String)
    func webViewViewControllerDidCancel(_ vc: WebViewViewController)
}
