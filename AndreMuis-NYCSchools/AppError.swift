//
//  CustomError.swift
//  AndreMuis-NYCSchools
//
//  Created by Andre Muis on 5/30/22.
//

import Foundation

enum AppError: Error {
    case generic(String, String, Int, String)

    static func genericError(filePath: String = #file,
                             functionName: String = #function,
                             lineNumber: Int = #line,
                             message: String) -> AppError {
        let filename = URL(string: filePath)?.lastPathComponent ?? filePath

        return AppError.generic(filename, functionName, lineNumber, message)
    }
}
