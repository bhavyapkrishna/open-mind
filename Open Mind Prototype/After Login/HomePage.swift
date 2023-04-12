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
                //add a background
                VStack{
                    //add the logo again
                    Image("Logo")
                        .resizable()
                        .frame(width: 250, height: 250)
                    
                    VStack {
                        Text("Open Mind is an app created by Bhavya Krishna ('25) and Hannah Jackson ('24) in order to consolidate mental health resources for Case Western students. \n")
                        
                        Text("We would like to thank Erika Howard, \n Stacey Manz, the Flora Stone Mather \n Women's Center, and the PRISE Program for their help and support for this project.")
                    }
                    .padding(.bottom)
                    .foregroundColor(.black)
                    .background(Rectangle()
                        //.foregroundColor(Color(UIColor(red: 0.65, green: 0.82, blue: 0.94, alpha: 1.00)))
                        .frame(width: 360, height: 250)
                        .foregroundColor(.white))
                        //.cornerRadius(20)
                        //.shadow(radius: 25))

                        .padding()
                        .padding(.bottom)
                    
                    //welcome message
                    VStack{
                        NavigationLink("Emergency Resources", destination: Emergency())
                    }
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Rectangle()
                        .foregroundColor(Color(UIColor(red: 0.50, green: 0.04, blue: 0.04, alpha: 1.00)))
                        .cornerRadius(20)
                        .shadow(radius: 25))
                }
        }
        
    }
}
        
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

