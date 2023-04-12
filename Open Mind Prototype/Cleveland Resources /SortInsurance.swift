//
//  SortInsurance.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/21/23.
//

import SwiftUI

struct SortInsurance: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Insurance.allCases) { insurance in
                            NavigationLink{
                                    SpecialtyView(doctor: Doctors.all.filter{ $0.insurance == insurance.rawValue})
                            } label: {
                                Text(insurance.rawValue)

                            }
                        }
            }
            .navigationTitle("Sorted By: Insurances")
        }
    }
}

struct SortInsurance_Previews: PreviewProvider {
    static var previews: some View {
        SortInsurance()
    }
}
