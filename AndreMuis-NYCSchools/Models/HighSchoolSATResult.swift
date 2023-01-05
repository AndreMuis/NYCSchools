//
//  HighSchoolSATResult.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Foundation

struct HighSchoolSATResult: Decodable, Hashable {
    let dbn: String
    let schoolName: String
    let testTakerCount: String
    let criticalReadingAverageScore: String
    let mathAverageScore: String
    let writingAverageScore: String

    enum CodingKeys: String, CodingKey {
        case dbn = "dbn"
        case schoolName = "school_name"
        case testTakerCount = "num_of_sat_test_takers"
        case criticalReadingAverageScore = "sat_critical_reading_avg_score"
        case mathAverageScore = "sat_math_avg_score"
        case writingAverageScore = "sat_writing_avg_score"
    }
}
