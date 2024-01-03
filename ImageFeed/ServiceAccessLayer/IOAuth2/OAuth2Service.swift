//
//  OAuth2Service.swift
//  ImageFeed
//
//  Created by Bakhadir on 03.01.2024.
//

import Foundation

final class OAuth2Service {
    func fetchOAuthToken(_ code: String, comletion: @escaping (Result<String, Error>) -> Void) {
        comletion(.success(""))
    }
}
