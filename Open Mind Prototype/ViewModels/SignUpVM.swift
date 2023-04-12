//
//  SignUpVM.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/19/23.
//

import Foundation
import SwiftUI
import Firebase
import GoogleSignIn

class SignUpVM: ObservableObject {
    @Published var isLoggedIn = false
    
    func signInWithGoogle() {
        //get app client id
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        //google sign in config object
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        
        //sign in method
        GIDSignIn.sharedInstance.signIn(withPresenting: ApplicationUtility.rootViewController) { user, error in
            if let error = error {
                print(error.localizedDescription)
                return
                
            }
            
            guard
                let user = user?.user,
                let idToken = user.idToken else { return }
            
            let accessToken = user.accessToken
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString,accessToken: accessToken.tokenString)
            
            Auth.auth().signIn(with: credential) { res, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                guard let user = res?.user else { return }
                print(user)
 
            }

        }
    }
}
