//
//  AuthViewControllerDelegate.swift
//  ImageFeed
//
//  Created by Bakhadir on 07.01.2024.
//

import Foundation

protocol AuthViewControllerDelegate: AnyObject {
    func authViewController(_ vc: AuthViewController, didAuthenticateWithCode code: String)
}
