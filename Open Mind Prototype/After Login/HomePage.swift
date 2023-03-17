//
//  HomePage.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            //background
            ZStack {
                Color(UIColor(red: 0.04, green: 0.19, blue: 0.31, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack{
                    //logo
                    VStack {
                        Text("(INSERT LOGO HERE)")
                    }
                    .padding()
                    .foregroundColor(.white)
                    .font(.title)
                    .background(Rectangle()
                        .frame(width: 350, height: 90)
                        .foregroundColor(Color(UIColor(red: 0.42, green: 0.42, blue: 0.42, alpha: 1.00)))
                        .shadow(radius: 30))
                    .padding()
                    
                    
                    //about the app
                    VStack {
                        Text("Open Mind is an app created by Bhavya Krishna ('25) and Hannah Jackson ('24) to consolidate mental health resources in the Cleveland area for CWRU students. This is the first prototype version.")
                    }
                    .foregroundColor(.white)
                    .font(.headline)
                    .background(Rectangle()
                        .frame(width: 350, height: 200)
                        .foregroundColor(Color(UIColor(red: 0.42, green: 0.42, blue: 0.42, alpha: 1.00)))
                        .shadow(radius: 30))
                    .padding()
                    .padding()
                    .padding()
                    
                    //buttons
                    VStack{
                        //cwru + cle
                        HStack {
                            //cwru resources
                            VStack {
                                NavigationLink(destination: CWRU()) {
                                    Image(systemName: "circle.hexagonpath")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.white)
                                }
                            }
                            .background(Rectangle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color(UIColor(red: 0.42, green: 0.42, blue: 0.42, alpha: 1.00))))
                            .padding()
                            
                            //cleveland resources
                            VStack {
                                NavigationLink(destination: Cleveland()) {
                                    Image(systemName: "seal")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                }
                            }
                            .background(Rectangle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color(UIColor(red: 0.42, green: 0.42, blue: 0.42, alpha: 1.00))))
                            .padding()
                            
                            
                            VStack{
                                NavigationLink(destination: Info()) {
                                    Image(systemName: "info")
                                        .resizable()
                                        .frame(width: 15, height: 25)
                                        .foregroundColor(.white)
                                }
                                .background(Rectangle()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color(UIColor(red: 0.42, green: 0.42, blue: 0.42, alpha: 1.00))))
                                .padding()
 
                            }
                            
                            VStack {
                                NavigationLink(destination: Forum()) {
                                    Image(systemName: "message")
                                        .resizable()
                                        .frame(width: 35, height: 35)
                                        .foregroundColor(.white)
                                }
                            }
                            .background(Rectangle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color(UIColor(red: 0.42, green: 0.42, blue: 0.42, alpha: 1.00))))
                            .padding()
                            
                            
                        }
                        .padding(.bottom)
                        .padding(.bottom)
                        
                        VStack {
                            NavigationLink(destination: Emergency()) {
                                Text("Emergency Resources")
                            }
                            .font(.largeTitle)
                        }
                        .foregroundColor(.white)
                        .background(Rectangle()
                            .frame(width: 375, height: 90)
                            .foregroundColor(Color(UIColor(red: 0.50, green: 0.09, blue: 0.05, alpha: 1.00))))
                        
                        
                    }
                }
            }
        }
        
    }
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
    
}
