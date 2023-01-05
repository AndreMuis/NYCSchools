//
//  AppConfiguration.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Foundation

struct AppConfiguration {
    static var nycHighSchoolListURLKey: URL {
        get throws {
            guard let urlAsString = Bundle.main.object(forInfoDictionaryKey: Constants.nycHighSchoolListURLKey) as? String else {
                throw AppError.genericError(message: "unable to retrieve URL string from info.plist")
            }

            guard let url = URL(string: urlAsString) else {
                throw AppError.genericError(message: "unable to create URL from string")
            }

            return url
        }
    }

    static var nycHighSchoolSATResultListURLKey: URL {
        get throws {
            guard let urlAsString = Bundle.main.object(forInfoDictionaryKey: Constants.nycHighSchoolSATResultListURLKey) as? String else {
                throw AppError.genericError(message: "unable to retrieve URL string from info.plist")
            }

            guard let url = URL(string: urlAsString) else {
                throw AppError.genericError(message: "unable to create URL from string")
            }

            return url
        }
    }
}
