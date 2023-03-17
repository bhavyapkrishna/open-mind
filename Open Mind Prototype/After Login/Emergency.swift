//
//  Emergency.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI

struct Emergency: View {
    var body: some View {
        NavigationView {
            ZStack {
                //add background
                Color(UIColor(red: 0.04, green: 0.19, blue: 0.31, alpha: 1.00))
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Spacer()
                    //cwru resources
                    VStack {
                        Text("CWRU Specific Resources")
                            .font(.title)
                            .padding()
                        
                        Button("Emergency Dispatch") {
                            UIApplication.shared.open(URL(string: "tel://2163683333")!)
                        }
                        
                        Button("Counselor On Call") {
                            UIApplication.shared.open(URL(string: "tel://2163685872")!)
                        }
                        
                        
                        Button("Nurse On Call") {
                            UIApplication.shared.open(URL(string: "tel://2163682450")!)
                        }
                    }
                    .foregroundColor(.white)
                    .background(Rectangle()
                        .frame(width: 350, height: 200)
                        .foregroundColor(Color(UIColor(red: 0.42, green: 0.42, blue: 0.42, alpha: 1.00)))
                        .shadow(radius: 30))
                    .padding(.bottom)
                    .padding(.bottom)
                    Spacer()
                    
                    //outside resources
                    VStack {
                        Text("Outside Resources")
                            .font(.title)
                            .padding()
                        
                        Button("Emergencies (Outside CWRU)") {
                            UIApplication.shared.open(URL(string: "tel://911")!)
                        }
                        
                        Button("Suicide Prevention Hotline") {
                            UIApplication.shared.open(URL(string: "tel://988")!)
                        }
                        
                        Button("Crisis Text Line") {
                            UIApplication.shared.open(URL(string: "messages://741741")!)
                        }
                        
                        Button("Trevor Project Hotline") {
                            UIApplication.shared.open(URL(string: "tel://8664887386")!)
                        }
                    }
                    .foregroundColor(.white)
                    .background(Rectangle()
                        .frame(width: 350, height: 200)
                        .foregroundColor(Color(UIColor(red: 0.42, green: 0.42, blue: 0.42, alpha: 1.00)))
                        .shadow(radius: 30))
                    .padding()
                    .padding()
                    Spacer()
                    Spacer()
                    
                }
                }
            }
            
        }
    }
    
    struct Emergency_Previews: PreviewProvider {
        static var previews: some View {
            Emergency()
        }
    }

