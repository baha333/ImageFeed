//
//  NetworkError.swift
//  ImageFeed
//
//  Created by Bakhadir on 24.02.2024.
//

import Foundation

enum NetworkError: Error {
    case httpStatusCode(Int)
    case urlRequestError(Error)
    case urlSessionError
    case jsonErorr(Error)
}
