//
//  ModelDataset.swift
//


import Foundation


//-------------------------------------------------------------
// MARK: - User Login Dataset Methods
//-------------------------------------------------------------

func getUserLoginData(dataResponse: Data) -> LoginDataModel? {
    
    var loginData : LoginDataModel?
    
    let decoder = JSONDecoder()
    if let loadedLoginData = try? decoder.decode(LoginDataModel.self, from: dataResponse) {
        loginData = loadedLoginData
    }
    
    return loginData
}
