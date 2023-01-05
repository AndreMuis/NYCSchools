//
//  HighSchoolSATResultViewModel.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Foundation

class HighSchoolSATResultViewModel: ObservableObject {
    @Published var highSchoolSATResult: HighSchoolSATResult?

    init(highSchoolSATResult: HighSchoolSATResult?) {
        self.highSchoolSATResult = highSchoolSATResult
    }
}
