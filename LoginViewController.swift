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
        
        let param: [String:String] = [loginParameter.kEmail: "bhavesh@odedara.com", loginParameter.kPassword: "1234"]
        
        webserviceForLogin(param) { (data, result, status) in
            
            if status {
                // Response Status True
                guard let loginData = genericModelDataset(dataOfModel: data, model: LoginDataModel.self) else {
                    // Modeling failed
                    return
                }
                self.userData = loginData
            }
            else {
                // Response Status False
            }
        }
    }
    
}

