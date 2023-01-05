//
//  HighSchoolListEndpoint.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Foundation

struct HighSchoolListEndpoint: Endpoint {
    let url: URL
    let httpMethod: String

    init() throws {
        self.url = try AppConfiguration.nycHighSchoolListURLKey
        self.httpMethod = "GET"
    }
}
