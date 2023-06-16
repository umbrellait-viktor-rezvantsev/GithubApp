//
//  AuthService.swift
//  GithubApp
//
//  Created by Viktor Rezvantsev on 20.04.2023.
//

import Foundation
import Alamofire


protocol AuthService {
    func login(username: String, password: String)
}

final class AuthServiceImpl: AuthService {
    
    private let baseLink = "https://uit-attrack-v2-dev.umbrellait.tech/api"
    
//    func login(username: String, password: String) {
//
//        let url = URL(string: baseLink + "/auth/login")!
//
//        struct Login: Encodable {
//            let username: String
//            let password: String
//        }
//
//        let login = Login(username: username, password: password)
//
//        let headers: HTTPHeaders = [
//            "Content-Type": "application/json"
//        ]
//
//        AF.request(url, method: .post,
//                   parameters: login,
//                   encoder: JSONParameterEncoder.default,
//                   headers: headers)
//            .response { response in
//            debugPrint(response)
//        }
//    }
    
    func login(username: String, password: String) {
        
        let request = NetworkPerformer.buildRequest(method: AuthorizationRouter.login(username: username, password: password)
        )
        request.response { response in
            debugPrint(response)
        }
    }
}
