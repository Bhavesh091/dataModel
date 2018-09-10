//
//  ModelDataset.swift
//


import Foundation


//-------------------------------------------------------------
// MARK: - User Login Dataset Methods
//-------------------------------------------------------------

func getUserLoginData<T: Codable>(dataResponse: Data) -> (response:T?, error: error?) {
    
   let decoder = JSONDecoder()
	
	do {
		let modelData = try decoder.decode(T.self, from: dataResponse) 
        return (modelData,nil)
	}
	catch {
		return (nil,error)
	}
   
}
