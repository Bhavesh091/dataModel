//
//  ModelDataset.swift
//


import Foundation


//-------------------------------------------------------------
// MARK: - Model Dataset Methods
//-------------------------------------------------------------

func genericModelDataset<T: Codable>(dataOfModel: Data, model: T.Type) -> T? {
    
    do {
        let modelData = try JSONDecoder().decode(T.self, from: dataOfModel)
        return modelData
    }
    catch {
        return nil
    }
}
