//
//  Constants.swift
//  ImageFeed
//
//  Created by Bakhadir on 30.12.2023.
//

import Foundation

enum Constants {
    static let secretKey = "ND3bdDzFSscslZ1HaDu1jqU6yQ-xxGwZ0yAcaXSoKyY"
    static let accessKey = "uC_pOLOQUQuhnblD1XKEubllt3aeqrTr5SIGezr5mKM"
    static let redirectURI = "urn:ietf:wg:oauth:2.0:oob"
    static let accessScope = "public+read_user+write_likes"

    static let defautlBaseURL = URL(string: "https://api.unsplash.com")!
    static let unsplashAuthorizeURLString = "https://unslpash.com/oauth/authorize"
}

struct AuthConfiguration {
    let accessKey: String
    let secretKey: String
    let redirectURI: String
    let accessScope: String
    let defaultBaseURL: URL
    let authURLString: String

    init(accessKey: String, secretKey: String, redirectURI: String, accessScope: String, defaultBaseURL: URL, authURLString: String) {
        self.accessKey = accessKey
        self.secretKey = secretKey
        self.redirectURI = redirectURI
        self.accessScope = accessScope
        self.defaultBaseURL = defaultBaseURL
        self.authURLString = authURLString
    }

    static var standard: AuthConfiguration {
        return AuthConfiguration(accessKey: Constants.accessKey,
                                 secretKey: Constants.secretKey,
                                 redirectURI: Constants.redirectURI,
                                 accessScope: Constants.accessScope,
                                 defaultBaseURL: Constants.defautlBaseURL,
                                 authURLString: Constants.unsplashAuthorizeURLString)
    }
}
