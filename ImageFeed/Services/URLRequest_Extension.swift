//
//  URLRequest_Extension.swift
//  ImageFeed
//
//  Created by Bakhadir on 06.02.2024.
//

import Foundation

extension URLRequest {
    static func makeHTTPRequest(
        path: String,
        httpMethod: String,
        baseURL: URL = DefaultBaseUrl
    ) -> URLRequest {

        var request = URLRequest(url: URL(string: path, relativeTo: baseURL) ?? baseURL)
        request.httpMethod = httpMethod
        return request
    }
}
