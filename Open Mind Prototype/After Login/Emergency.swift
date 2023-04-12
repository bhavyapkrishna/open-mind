//
//  Emergency.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI

struct Emergency: View {
    
    enum PushedItem: String {
        case emergency
    }
    
    @State var selectedPushItem: PushedItem?
    
    var body: some View {
        NavigationView {
            
            List{
                Section{
                    //depression
                    Button("Emergency Dispatch") {
                        UIApplication.shared.open(URL(string: "tel://2163683333")!)
                    };
                    
                    //anxiety
                    Button("Counselor On Call") {
                        UIApplication.shared.open(URL(string: "tel://2163685872")!)
                    };
                    
                    //bipolar
                    Button("Nurse On Call") {
                        UIApplication.shared.open(URL(string: "tel://2163682450")!)
                    };
 
                } header: {
                    Text("Case Western Emergency Resources")
                }
                
                Section{
                    Button("Emergencies (Outside CWRU)") {
                        UIApplication.shared.open(URL(string: "tel://911")!)
                    };
                    
                    //anxiety
                    Button("Suicide Prevention Hotline") {
                        UIApplication.shared.open(URL(string: "tel://988")!)
                    };
                    
                    //bipolar
                    Button("Crisis Text Line") {
                        UIApplication.shared.open(URL.init(string: "sms:741741&body=HOME")!, options: [:], completionHandler: nil)
                    };
                    
                    Button("Trevor Project Hotline") {
                        UIApplication.shared.open(URL(string: "tel://8664887386")!)
                    };
                    
                    Button("Poison Control Hotline") {
                        UIApplication.shared.open(URL(string: "tel://8002221222")!)
                    }
                    
                } header: {
                    Text("Outside Emergency Resources")
                }
            }
            .navigationTitle("Emergency Resources")
            
            }
        
        }
    }
    
    struct Emergency_Previews: PreviewProvider {
        static var previews: some View {
            Emergency()
                .onOpenURL { url in
                    NavigationLink(destination: Emergency()) {
                        EmptyView()
                    }
                }
        }
    }

