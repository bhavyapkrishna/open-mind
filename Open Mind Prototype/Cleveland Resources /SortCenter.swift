//
//  SortCenter.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/21/23.
//

import SwiftUI

struct SortCenter: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Center.allCases) { workplace in
                            NavigationLink{
                                    SpecialtyView(doctor: Doctors.all.filter{ $0.workplace == workplace.rawValue})
                            } label: {
                                Text(workplace.rawValue)

                            }
                        }
            }
            .navigationTitle("Sorted By: Workplaces")
        }
    }
}

struct SortCenter_Previews: PreviewProvider {
    static var previews: some View {
        SortCenter()
    }
}
