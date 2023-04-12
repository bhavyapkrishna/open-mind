//
//  SortType.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/21/23.
//

import SwiftUI

struct SortType: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { type in
                            NavigationLink{
                                    SpecialtyView(doctor: Doctors.all.filter{ $0.type == type.rawValue})
                            } label: {
                                Text(type.rawValue)

                            }
                        }
            }
            .navigationTitle("Sorted By: Specialists")
        }
    }
}

struct SortType_Previews: PreviewProvider {
    static var previews: some View {
        SortType()
    }
}
