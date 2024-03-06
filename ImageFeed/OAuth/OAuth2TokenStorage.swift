//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Bakhadir on 03.01.2024.
//


import Foundation
import SwiftKeychainWrapper

final class OAuth2TokenStorage {
    private let key = "Auth token"
    private let keychainWrapper = KeychainWrapper.standard
    var token: String? {
        get {
            return keychainWrapper.string(forKey: key)
        }
        set {
            if newValue == nil {
                keychainWrapper.removeObject(forKey: key)
            } else {
                keychainWrapper.set(newValue!, forKey: key)
            }
        }
    }
}

