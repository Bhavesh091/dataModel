//
//  ModelDataset.swift
//


import Foundation


//-------------------------------------------------------------
// MARK: - Model Dataset Methods
//-------------------------------------------------------------

func genericModelDataset<T: Codable>(dataOfModel: Data, model: T.Type) -> (response:T?, error: error?) {
    
    do {
        let modelData = try JSONDecoder().decode(T.self, from: dataOfModel)
        return (modelData,nil)
    }
    catch {
        return (nil,error)
    }
}
