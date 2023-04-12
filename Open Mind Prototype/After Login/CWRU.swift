//
//  CWRU.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI

struct CWRU: View {
    var body: some View {
        NavigationView {
            VStack{
                
                List{
                    Section{
                        //depression
                        Button("UHCS Website") {
                            UIApplication.shared.open(URL(string: "https://case.edu/studentlife/healthcounseling/")!)
                        };
                        
                        //anxiety
                        Button("MyHealthConnect") {
                            UIApplication.shared.open(URL(string: "https://myhealthconnect.case.edu/")!)
                        };
                        
                        //bipolar
                        Button("TimelyCare") {
                            UIApplication.shared.open(URL(string: "https://app.timelycare.com/auth/login")!)
                        };
                        
                        Button("General Health Resources") {
                            UIApplication.shared.open(URL(string: "https://case.edu/studentlife/healthcounseling/student-wellness/resources")!)
                        };

                        
                    } header: {
                        Text("Case Western Websites")
                    }
                    
                    Section{
                        Button("Office of Multicultural Affairs") {
                            UIApplication.shared.open(URL(string: "https://case.edu/studentlife/multicultural/")!)
                        };
                        
                        //anxiety
                        Button("MyHealthConnect") {
                            UIApplication.shared.open(URL(string: "https://case.edu/lgbt/")!)
                        };
                        
                        //bipolar
                        Button("Flora Stone Mather Women's Center") {
                            UIApplication.shared.open(URL(string: "https://case.edu/centerforwomen/")!)
                        };
                        
                    } header: {
                        Text("On Campus Resources")
                    }
                    
                    Section{
                        Button("Counselor on Call (24/7)") {
                            UIApplication.shared.open(URL(string: "https://case.edu/studentlife/multicultural/")!)
                        };
                        
                        //anxiety
                        Button("Medical Advice (24/7)") {
                            UIApplication.shared.open(URL(string: "https://case.edu/lgbt/")!)
                        };
                        
                    } header: {
                        Text("On Campus Phone Lines")
                    }
                }
            }
            .navigationTitle("CWRU Resources")
        }
    }
}

struct CWRU_Previews: PreviewProvider {
    static var previews: some View {
        CWRU()
            
    }
}
