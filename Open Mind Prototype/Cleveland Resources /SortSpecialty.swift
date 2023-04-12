//
//  SortSpecialty.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/21/23.
//

import SwiftUI

struct SortSpecialty: View {

    var body: some View {
        NavigationView {
            List {
                ForEach(Specialties.allCases) { specialty in
                            NavigationLink{
                                    SpecialtyView(doctor: Doctors.all.filter{ $0.specialty == specialty.rawValue})
                            } label: {
                                Text(specialty.rawValue)

                            }
                        }
                
            }
            .navigationTitle("Sorted By: Specialties")
        }
        }
        
}

struct SortSpecialty_Previews: PreviewProvider {
    static var previews: some View {
        SortSpecialty()
    }
}
