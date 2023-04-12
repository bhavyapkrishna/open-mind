//
//  Welcome.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI
import GoogleSignIn

struct Welcome: View {
    @StateObject private var vm = SignUpVM()
    var body: some View {
        NavigationView {
            /*
             Things to include:
             * Welcome Message
             * Button to Log In
             */
            ZStack {
                //add a background
                Color(UIColor(red: 0.65, green: 0.82, blue: 0.94, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    //welcome message
                    VStack {
                        Image("Logo2")
                            .resizable()
                            .frame(width: 400, height: 400)
                    }
                    //.foregroundColor(.black)
                    
                    //log in function
                    VStack {
                        /*Button(action: {
                            vm.signInWithGoogle()
                        }) {
                            Text("Click here to log in")
                        }*/
                        
                        VStack{
                         NavigationLink("Click here to log in", destination: TabBar())
                         }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .shadow(radius: 25))
                    }
                }
            }
        }
    }
    
    
    struct Welcome_Previews: PreviewProvider {
        static var previews: some View {
            Welcome()
        }
    }
}
