//
//  APIMethod.swift
//


import Foundation
import UIKit
import Alamofire

//-------------------------------------------------------------
// MARK: - API Method
//-------------------------------------------------------------

func apiMethod(_ method: HTTPMethod,_ dictParam: Any, nsURL: String, completion: @escaping(_ data: Data, _ result: Any, _ status: Bool) -> Void) {

    let header: [String:String]? = [:]
    
    let strURL = nsURL
    
    Alamofire.request(strURL, method: method, parameters: dictParam as? [String:Any], encoding: URLEncoding.default, headers: header)
        .validate()
        .responseJSON { (response) in
 
            switch response.result {
                
            case .success(let value):
                if let json = value as? [String:Any] {

                    if let status = json["status"] as? Bool {
                        if (status) {
                            completion(response.data!,json,true)
                        }
                        else {
                            completion(response.data!,json,false)
                        }
                    }
                }
            case .failure(_):
                completion(response.data!,response.data!,false)
            }
    }

}

