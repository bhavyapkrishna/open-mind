//
//  Welcome.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        NavigationView {
            /*
             Things to include:
             * Welcome Message
             * Button to Log In
             */
            ZStack {
                //add a background
                Color(UIColor(red: 0.04, green: 0.19, blue: 0.31, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    //welcome message
                    VStack {
                        Text("Welcome to Open Mind!")
                        Text("This is a project created by Bhavya Krishna ('25) and Hannah Jackson ('24)")
                    }
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .shadow(radius: 25))
                    .padding()
                    
                    //log in function
                    VStack {
                        NavigationLink("Click here to log in", destination: HomePage())
                        //add a login feature with google here
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
