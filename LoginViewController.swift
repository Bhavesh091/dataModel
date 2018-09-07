//
//  LoginViewController.swift
//

import UIKit

class LoginViewController: UIViewController {

    //-------------------------------------------------------------
    // MARK: - Varible Declaration
    //-------------------------------------------------------------
    
    var userData: LoginDataModel?
    
    //-------------------------------------------------------------
    // MARK: - Base Methods
    //-------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webserviceOfLogin()
    }
    
    //-------------------------------------------------------------
    // MARK: - Webservice Methods
    //-------------------------------------------------------------
    
    func webserviceOfLogin() {
        
        let param: [String:String] = [loginParameter.kEmail: "xyz@xyz.com", loginParameter.kPassword: "1234"]
        
        webserviceForLogin(param) { (data, result, status) in
            
            if status {
                // Response Status True
                self.userData = getUserLoginData(dataResponse: data)
            }
            else {
                // Response Status False
            }
        }
    }
    
}

