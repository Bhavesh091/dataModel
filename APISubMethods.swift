//
//  APISubMethods.swift
//


import Foundation


//-------------------------------------------------------------
// MARK: - Webservice For Login
//-------------------------------------------------------------

func webserviceForLogin(_ params: Any, completion: @escaping (_ data: Data, _ result: Any, _ status: Bool) -> Void) {
    
    let url = APIUrl.kLogin
    apiMethod(.post, params, nsURL: url, completion: completion)
}

