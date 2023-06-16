//
//  NetworkError.swift
//  Application
//
//  Created by Viktor Rezvantsev on 08.06.2023.
//

import Foundation

enum NetworkError: Error, Equatable {
    case unknown
    case badURL
    case notFound
    case parsingError
}

extension NetworkError: LocalizedError {
    
    public var errorDescription: String? {
        switch self {
        case .unknown:
            return "Server Error"
        case .badURL:
            return "Auth problems"
        case .notFound:
            return "Wrong url path"
        case .parsingError:
            return "Failed to parse response"
        }
    }
}
