//
//  Info.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI

struct Info: View {
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    Text("Disclaimer: These resources are not to be used for self-diagnosis, but rather to learn more about and access resources for common mental health illnesses")
                        .foregroundColor(.black)
                        .italic()
                }
                .padding()
                
                /*.background(Rectangle()
                    //.foregroundColor(.white)
                    .frame(width: 370, height: 130)
                    .cornerRadius(20)
                    //.shadow(radius: 25))
                .padding(.top)
                .padding(.bottom)*/
                List {
                    Section{
                        //depression
                        Button("Depression") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/depression/guide/what-is-depression")!)
                        };
                        
                        //anxiety
                        Button("Anxiety Disorders") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/anxiety-panic/guide/anxiety-disorders")!)
                        };
                        
                        //bipolar
                        Button("Bipolar Disorder") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/bipolar-disorder/mental-health-bipolar-disorder")!)
                        };
                        
                        //ocd
                        Button("Obsessive Compulsive Disorder") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/mental-health/obsessive-compulsive-disorder")!)
                        };
                        //bpd
                        Button("Borderline Personality Disorder") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/mental-health/borderline-personality-disorder")!)
                        };
                        
                        //ptsd
                        Button("Post-traumatic Stress Disorder") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/mental-health/post-traumatic-stress-disorder")!)
                        };
                        
                        //schizophrenia
                        Button("Schizophrenia") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/schizophrenia/mental-health-schizophrenia")!)
                        };
                        
                        //eating disorders
                        Button("Eating Disorders") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/mental-health/eating-disorders/signs-of-eating-disorders")!)
                        }
                        
                    } header: {
                        Text("Information")
                    }
                    
                    Section{
                        //depression
                        Button("Depression") {
                            UIApplication.shared.open(URL(string: "https://www.counseling.org/knowledge-center/mental-health-resources/depression")!)
                        };
                        
                        //anxiety
                        Button("Anxiety Disorders") {
                            UIApplication.shared.open(URL(string: "https://adaa.org/understanding-anxiety/generalized-anxiety-disorder-gad/resources")!)
                        };
                        
                        //bipolar
                        Button("Bipolar Disorder") {
                            UIApplication.shared.open(URL(string: "https://www.everydayhealth.com/bipolar-disorder/guide/resources/")!)
                        };
                        
                        //ocd
                        Button("Obsessive Compulsive Disorder") {
                            UIApplication.shared.open(URL(string: "https://www.aacap.org/aacap/Families_and_Youth/Resource_Centers/Obsessive_Compulsive_Disorder_Resource_Center/Home.aspx")!)
                        };
                        //bpd
                        Button("Borderline Personality Disorder") {
                            UIApplication.shared.open(URL(string: "https://www.borderlinepersonalitydisorder.org/list-of-recommended-bpd-resources/")!)
                        };
                        
                        //ptsd
                        Button("Post-traumatic Stress Disorder") {
                            UIApplication.shared.open(URL(string: "https://adaa.org/understanding-anxiety/posttraumatic-stress-disorder-ptsd/resources")!)
                        };
                        
                        //schizophrenia
                        Button("Schizophrenia") {
                            UIApplication.shared.open(URL(string: "https://www.webmd.com/schizophrenia/schizophrenia-resources-index")!)
                        };
                        
                        //eating disorders
                        Button("Eating Disorders") {
                            UIApplication.shared.open(URL(string: "https://www.onlinemswprograms.com/resources/resources-eating-disorder-recovery/")!)
                        }
                        
                    } header: {
                        Text("Resources")
                        
                        
                    }
                    
                    
                    
                }
                
                
            }
            .navigationTitle("Info & Resources")
        }

            

    }
    
    
    struct Info_Previews: PreviewProvider {
        static var previews: some View {
            Info()
        }
    }
}
