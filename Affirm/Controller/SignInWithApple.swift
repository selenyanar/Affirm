//
//  SignInWithApple.swift
//  Affirm
//
//  Created by Selen Yanar on 6.11.2021.
//

import AuthenticationServices
import SwiftUI

struct AppleUser: Codable {
    
    let userId: String
    let firstName: String
    let lastName: String
    let email: String
    
    init?(credentials: ASAuthorizationAppleIDCredential) {
        guard
            let firstName = credentials.fullName?.givenName,
            let lastName = credentials.fullName?.familyName,
            let email = credentials.email
        else { return nil }
        
        self.userId = credentials.user
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        
    }
    
}

struct SignInWithApple: View {
    var body: some View {
        
        SignInWithAppleButton(.continue,
                              onRequest: configure,
                              onCompletion: handle)
            .cornerRadius(25)
            .frame(width: 300, height: 45)
            .padding()
    }
}

func configure(_ request: ASAuthorizationAppleIDRequest) {
    request.requestedScopes = [.fullName, .email]
    
}

func handle(_ authResult: Result<ASAuthorization, Error>) {
    switch authResult {
    case.success(let auth):
        print(auth)
        switch auth.credential {
        case let appleIdCredentials as ASAuthorizationAppleIDCredential:
            if let appleUser = AppleUser(credentials: appleIdCredentials),
               let appleUserData = try? JSONEncoder().encode(appleUser){
                UserDefaults.standard.setValue(appleUserData, forKey: appleUser.userId)
                
                print("saved apple user", appleUser)
                
            } else {
                print("missing some fields",
                      appleIdCredentials.email,
                      appleIdCredentials.fullName,
                      appleIdCredentials.user)
            }
            
        default:
            print(auth.credential)
        }
    case.failure(let error):
        print(error)
    }
    
}

struct SignInWithApple_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithApple()
    }
}
