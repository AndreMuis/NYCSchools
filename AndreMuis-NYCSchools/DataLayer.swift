//
//  DataLayer.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Combine
import Foundation

class DataLayer: ObservableObject {
    func getHighSchoolList() throws -> AnyPublisher<[HighSchool], Error> {
        do {
            let endpoint = try HighSchoolListEndpoint()

            let publisher = URLSession.dataTaskPublisher(for: endpoint)
                .decode(type: [HighSchool].self, decoder: JSONDecoder())
                .eraseToAnyPublisher()

            return publisher
        }
    }

    func getHighSchoolSATResultList() throws -> AnyPublisher<[HighSchoolSATResult], Error> {
        do {
            let endpoint = try HighSchoolSATResultListEndpoint()

            let publisher = URLSession.dataTaskPublisher(for: endpoint)
                .decode(type: [HighSchoolSATResult].self, decoder: JSONDecoder())
                .eraseToAnyPublisher()

            return publisher
        }
    }
}
