//
//  HighSchoolSATResultView.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import SwiftUI

struct HighSchoolSATResultView: View {
    @ObservedObject var viewModel: HighSchoolSATResultViewModel

    var body: some View {
        VStack {
            if self.viewModel.highSchoolSATResult != nil {
                Text(self.viewModel.highSchoolSATResult?.schoolName ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)

                Text("Test takers: \(self.viewModel.highSchoolSATResult?.testTakerCount ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Critical reading average score: \(self.viewModel.highSchoolSATResult?.criticalReadingAverageScore ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Math average score: \(self.viewModel.highSchoolSATResult?.mathAverageScore ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading)

                Text("Writing average score: \(self.viewModel.highSchoolSATResult?.writingAverageScore ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else {
                Text("No data found.")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .topLeading)
        .padding(10)
        .navigationTitle("SAT Result")
    }
}

struct HighSchoolSATResultView_Previews: PreviewProvider {
    static var previews: some View {
        let result = HighSchoolSATResult(dbn: "0",
                                         schoolName: "school name",
                                         testTakerCount: "0",
                                         criticalReadingAverageScore: "0",
                                         mathAverageScore: "0",
                                         writingAverageScore: "0")

        HighSchoolSATResultView(viewModel: HighSchoolSATResultViewModel(highSchoolSATResult: result))
    }
}
