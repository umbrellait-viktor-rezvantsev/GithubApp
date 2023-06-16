//
//  AuthorizationRouter.swift
//  NetworkFramework
//
//  Created by Viktor Rezvantsev on 09.06.2023.
//

import Alamofire

enum AuthorizationRouter: APIRouterProtocol {
    
    case login(username: String, password: String)
    case registration
    
    var method: HTTPMethod {
        switch self {
            case .login, .registration:
                return .post
        }
    }
    
    var path: String {
        switch self {
        case .login:
            return "/auth/login"
        case .registration:
            return "/users"
        }
    }

    var parameters: [String : Any]? {
        switch self {
        case .login(let username, let password):
            return ["username": username, "password": password]
        default:
            return nil
        }
    }
    
}
