//
//  AuthResponse.swift
//  Application
//
//  Created by Viktor Rezvantsev on 08.06.2023.
//

import Foundation

struct AuthResponse: Encodable {
    let token: String
    let refreshToken: String
}
