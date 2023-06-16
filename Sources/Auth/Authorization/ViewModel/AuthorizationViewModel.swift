//
//  AuthorizationViewModel.swift
//  Application
//
//  Created by Viktor Rezvantsev on 29.05.2023.
//

import Foundation

protocol AuthorizationViewModelProtocol {
    func login(username: String, password: String)
}

final class AuthorizationViewModel: AuthorizationViewModelProtocol {
    
    let authService: AuthService
    
    init(authService: AuthService) {
        self.authService = authService
    }
    
    func login(username: String, password: String) {
        authService.login(username: username, password: password)
    }
}
