//
//  NetworkPerformer.swift
//  Application
//
//  Created by Viktor Rezvantsev on 08.06.2023.
//

import Alamofire

class NetworkPerformer {
    
    static func buildRequest(method: APIRouterProtocol) -> DataRequest {
        return AF.request(method.path)
    }
}
