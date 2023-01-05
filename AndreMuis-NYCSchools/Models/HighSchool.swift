//
//  HighSchool.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Foundation

struct HighSchool: Decodable, Hashable {
    let dbn: String
    let name: String
    let address: String
    let city: String

    var satResult: HighSchoolSATResult?

    enum CodingKeys: String, CodingKey {
        case dbn = "dbn"
        case name = "school_name"
        case address = "primary_address_line_1"
        case city = "city"
    }
}
