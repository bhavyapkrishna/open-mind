//
//  ClevelandView.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/21/23.
//

import SwiftUI

struct ClevelandView: View {
    
    var doctor: Doctors
    var body: some View {
        VStack(spacing: 30){
            Text(doctor.name)
                .font(.title)
                .multilineTextAlignment(.center)
            
            VStack(alignment: .leading) {
                Text("Type: " + doctor.type)
                    .multilineTextAlignment(.leading)
                Text("Speciality: " + doctor.specialty)
                Text("Address: " + doctor.address)
                Text("Phone Number: ")
                Button(doctor.number){
                    UIApplication.shared.open(URL(string: "tel://" + doctor.number)!)
                }
                Text("Website: "); Button(doctor.website){
                    UIApplication.shared.open(URL(string: doctor.website)!)
                }
                Text("Workplace: " + doctor.workplace)
                Text("Insurance: " + doctor.insurance)
            }
            
        }
    }
}

struct ClevelandView_Previews: PreviewProvider {
    static var previews: some View {
        ClevelandView(doctor: Doctors.all[0])
    }
}
