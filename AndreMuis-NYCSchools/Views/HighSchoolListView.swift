//
//  HighSchoolListView.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import SwiftUI

struct HighSchoolListView: View {
    @ObservedObject var viewModel = HighSchoolListViewModel()

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(self.viewModel.highSchoolList, id: \.self) { highSchool in
                        VStack {
                            Text("\(highSchool.name)")
                                .frame(maxWidth: .infinity,
                                       alignment: .leading)

                            Text("\(highSchool.address), \(highSchool.city)")
                                .frame(maxWidth: .infinity,
                                       alignment: .leading)

                            NavigationLink(
                                destination: HighSchoolSATResultView(viewModel: HighSchoolSATResultViewModel(highSchoolSATResult: highSchool.satResult)),
                                label: {
                                    Text("SAT Scores")
                                        .frame(maxWidth: .infinity,
                                               alignment: .leading)
                                })
                        }
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .padding(5)
                    }
                }
                .frame(maxWidth: .infinity,
                       maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .padding(10)
            .navigationTitle("NYC High Schools")
        }
        .alert("An Error Occuted",
               isPresented: self.$viewModel.showingAlert,
               actions: {
            Button("OK", role: .cancel) { }
        }, message: {
            Text(self.viewModel.error?.localizedDescription ?? "")
        })
    }
}

struct HighSchoolListView_Previews: PreviewProvider {
    static var previews: some View {
        HighSchoolListView()
    }
}
