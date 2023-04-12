//
//  ClevelandDataModel.swift
//  Open Mind Prototype
//
//  Created by Bhavya Krishna on 3/21/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String{ self.rawValue }
    case psych = "Psychiatrist"
    case therapist = "Therapist"
    case psychol = "Psychologist"
}

enum Center: String, CaseIterable, Identifiable {
    var id: String{ self.rawValue }

    case uh = "University Hospitals"
    case clinic = "Cleveland Clinic"
    case center = "Circle Health Center"
    case none = "Private Practice"
}

enum Specialties: String, CaseIterable, Identifiable {
    var id: String{ self.rawValue }

    case depression = "Depression"
    case anxiety = "Anxiety"
    case bipolar = "Bipolar Disorder"
    case ocd = "Obsessive Compulsive Disorder (OCD)"
    case bpd = "Borderline Personality Disorder (BPD)"
    case ptsd = "Post-traumatic Stress Disorder (PTSD)"
    case ed = "Eating Disorders"
}

enum Insurance: String, CaseIterable, Identifiable {
    var id: String{ self.rawValue }

    case insuranceA = "Insurance A"
    case insuranceB = "Insurance B"
    case insuranceC = "Insurance C"
    case insuranceD = "Insurance D"
}

struct Doctors: Identifiable {
    let id = UUID()
    let name: String
    let type: Category.RawValue //type of doc
    let specialty: Specialties.RawValue
    let address: String
    let number: String //phone number
    let website: String
    let workplace: Center.RawValue
    let insurance: Insurance.RawValue
}



extension Doctors {
    static let all: [Doctors] = [
        //sample A
        Doctors(
            name: "Sample A",
            type: "Therapist",
            specialty: "Depression",
            address: "122 Sample Road, Random Town, OH 44106",
            number: "1234567890",
            website: "https://case.edu",
            workplace: "Cleveland Clinic",
            insurance: "Insurance A"
        ),
        
        //sample B
        Doctors(
            name: "Sample B",
            type: "Therapist",
            specialty: "Anxiety",
            address: "123 Sample Road, Random Town, OH 44106",
            number: "1234567890",
            website: "https://case.edu",
            workplace: "Cleveland Clinic",
            insurance: "Insurance B"
        ),
        
        //sample C
        Doctors(
            name: "Sample C",
            type: "Psychiatrist",
            specialty: "Eating Disorders",
            address: "124 Sample Road, Random Town, OH 44106",
            number: "1234567890",
            website: "https://case.edu",
            workplace: "Cleveland Clinic",
            insurance: "Insurance B"
        ),
        
        //sample D
        Doctors(
            name: "Sample D",
            type: "Therapist",
            specialty: "Depression",
            address: "125 Sample Road, Random Town, OH 44106",
            number: "1234567890",
            website: "https://case.edu",
            workplace: "Cleveland Clinic",
            insurance: "Insurance C"
        ),
        
        //Sample E
        Doctors(
            name: "Sample E",
            type: "Psychiatrist",
            specialty: "Bipolar Disorder",
            address: "126 Sample Road, Random Town, OH 44106",
            number: "1234567890",
            website: "https://case.edu",
            workplace: "Private Practice",
            insurance: "Insurance D"
        ),
        
        //Sample F
        Doctors(
            name: "Sample F",
            type: "Psychologist",
            specialty: "Obsessive Compulsive Disorder (OCD)",
            address: "127 Sample Road, Random Town, OH 44106",
            number: "1234567890",
            website: "https://case.edu",
            workplace: "University Hospitals",
            insurance: "Insurance B"
        )
    ]
}
