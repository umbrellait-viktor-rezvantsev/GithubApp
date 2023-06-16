//
//  Constants.swift
//  NetworkFramework
//
//  Created by Viktor Rezvantsev on 09.06.2023.
//

import Foundation

struct ExternalServer {

    struct DevServer {
        static let baseURL = "https://uit-attrack-v2-dev.umbrellait.tech/api"
    }

}

enum HTTPHeaderField: String {
    case contentType = "Content-Type"
}

enum ContentType: String {
    case json = "application/json"
}
