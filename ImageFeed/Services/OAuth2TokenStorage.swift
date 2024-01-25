//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Bakhadir on 03.01.2024.
//

import Foundation
import SwiftKeychainWrapper

final class OAuth2TokenStorage {
    static let shared = OAuth2TokenStorage()
    
    private let keychainStorage = KeychainWrapper.standard
    
    private enum Keys: String {
        case accessToken
    }
    
    var token: String? {
        get {
            keychainStorage.string(forKey: Keys.accessToken.rawValue)
        }
        set {
            keychainStorage.set(newValue ?? "", forKey: Keys.accessToken.rawValue)
        }
    }
    
    func removeToken() {
        keychainStorage.removeObject(forKey: Keys.accessToken.rawValue)
    }
}
