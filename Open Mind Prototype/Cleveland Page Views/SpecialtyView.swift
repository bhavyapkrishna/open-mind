//
//  SpecialtyView.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 4/10/23.
//

import SwiftUI

struct SpecialtyView: View {
    var doctor: [Doctors]
    var body: some View {
        NavigationView {
            List {
                ForEach(doctor) { doctor in
                    NavigationLink(destination: ClevelandView(doctor: doctor)) {
                        Text(doctor.name)
                    }
                }
            }
        }
        
    }
}

struct SpecialtyView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialtyView(doctor: Doctors.all)
    }
}
