//
//  HighSchoolSATResultListEndpoint.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Foundation

struct HighSchoolSATResultListEndpoint: Endpoint {
    let url: URL
    let httpMethod: String

    init() throws {
        self.url = try AppConfiguration.nycHighSchoolSATResultListURLKey
        self.httpMethod = "GET"
    }
}
