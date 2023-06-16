//
//  RouterProtocol.swift
//  Application
//
//  Created by Viktor Rezvantsev on 08.06.2023.
//

import Alamofire

public protocol APIRouterProtocol {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: [String: Any]? { get }
}
