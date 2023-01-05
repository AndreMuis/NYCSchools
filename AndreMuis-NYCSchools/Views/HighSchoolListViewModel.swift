//
//  HighSchoolListViewModel.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Combine

class HighSchoolListViewModel: ObservableObject {
    private let dataLayer = DataLayer()

    @Published var highSchoolList = [HighSchool]()
    @Published var error: Error?
    @Published var showingAlert: Bool = false

    private var subscribers = Set<AnyCancellable>()

    init() {
        do {
            Publishers.Zip(try self.dataLayer.getHighSchoolList(),
                           try self.dataLayer.getHighSchoolSATResultList())
                .sink { completion in
                    if case .failure(let error) = completion {
                        self.error = error
                        self.showingAlert = true
                    }
                } receiveValue: { highSchoolList, highSchoolSATResultList in
                    self.highSchoolList = highSchoolList

                    for satResult in highSchoolSATResultList {
                        guard let index = highSchoolList.firstIndex(where: { $0.dbn == satResult.dbn }) else {
                            continue
                        }

                        self.highSchoolList[index].satResult = satResult
                    }
                }
                .store(in: &self.subscribers)
        } catch {
            self.error = error
            self.showingAlert = true
        }
    }
}
