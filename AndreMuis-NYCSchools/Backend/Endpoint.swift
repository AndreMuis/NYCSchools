//
//  Endpoint.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Foundation

protocol Endpoint {
    var url: URL { get }
    var httpMethod: String { get }

    var request: URLRequest { get }
}

extension Endpoint {
    var request: URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = self.httpMethod

        return request
    }
}
