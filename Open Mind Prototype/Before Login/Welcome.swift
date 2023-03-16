//
//  Welcome.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        /*
         Things to include:
         * Welcome Message
         * Button to Log In
         */
        ZStack {
            //add a background
            Color(.gray)
                .ignoresSafeArea()
            
            //add the welcome message
            VStack {
                VStack {
                    Text("Welcome to Open Mind!" + "\n" + "This is a project created by Bhavya Krishna ('25) and Hannah Jackson ('24)")
                }
                .padding()
                .background(Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .shadow(radius: 25))
                .padding()
            }
            
            
            
            
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
