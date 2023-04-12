//
//  Cleveland.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/16/23.
//

import SwiftUI

struct Cleveland: View {
    var doctor: [Doctors]
    @State private var navigateTo: AnyView?
    @State private var isActive = false
    var body: some View {
        
        NavigationView {
            
            VStack {
                List {
                    Section{
                        ForEach(doctor) { doctor in
                            NavigationLink(destination: ClevelandView(doctor: doctor)) {
                                Text(doctor.name)
                            }
                        }
                    } header: {
                        Text("Local Professionals")
                    }
                    
                    Section{
                        Button("Ohio Psychological Association") {
                            UIApplication.shared.open(URL(string: "https://ohpsych.org/page/ClevelandResources/Cleveland-Mental-Health-Resources.htm")!)
                        };
                        
                        Button("Emily Program") {
                            UIApplication.shared.open(URL(string: "https://emilyprogram.com/")!)
                        };
                        
                        Button("Circle Health Center Resources") {
                            UIApplication.shared.open(URL(string: "https://thecentersohio.org/services/behavioral-health/")!)
                        };
                        
                        Button("University Hospitals Psychiatry Services") {
                            UIApplication.shared.open(URL(string: "https://www.uhhospitals.org/services/adult-psychiatry-psychology")!)
                        };
                        
                        Button("Cleveland Clinic Psychiatry Services") {
                            UIApplication.shared.open(URL(string: "https://my.clevelandclinic.org/departments/neurological/depts/behavioral-health/adult-psychiatry")!)
                        };
                        
                        Button("Cleveland Therapy Group") {
                            UIApplication.shared.open(URL(string: "https://www.clevelandtherapygroup.com/")!)
                        };
                        
                        Button("NAMI General Support Groups") {
                            UIApplication.shared.open(URL(string: "https://namigreatercleveland.org/support-and-education/support-groups/")!)
                        };
                    } header: {
                        Text("Other Cleveland Resources")
                    }
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Menu {
                        Button("Type") {
                            self.navigateTo = AnyView(SortType())
                            self.isActive = true
                        }
                        Button("Specialty") {
                            self.navigateTo = AnyView(SortSpecialty())
                            self.isActive = true
                        }
                        Button("Insurance") {
                            self.navigateTo = AnyView(SortInsurance())
                            self.isActive = true
                        }
                        Button("Workplace") {
                            self.navigateTo = AnyView(SortCenter())
                            self.isActive = true
                        }
                    } label: {
                        Text("Sort Professionals")
                    }
                    .background(
                        NavigationLink(destination: self.navigateTo, isActive: $isActive) {
                            EmptyView()
                        })
                }
                }
            .navigationTitle("Cleveland Resources")
            }
            
            
            }
            
        }
        
    

struct Cleveland_Previews: PreviewProvider {
    static var previews: some View {
        Cleveland(doctor: Doctors.all)
    }
}
