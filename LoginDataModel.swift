//
//  LoginDataModel.swift
//


import Foundation

struct LoginDataModel: Codable {
    let status: Bool
    let user: User
    
    enum CodingKeys: String, CodingKey {
        
        case status = "status"
        case user = "user"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try values.decodeIfPresent(Bool.self, forKey: .status))!
        user = (try values.decodeIfPresent(User.self, forKey: .user))!
    }
}

// User Model
struct User: Codable {
    
    var id: Int?
    var email, image: String?
    var firstName, middleName, lastName: String?
    
    enum CodingKeys: String, CodingKey {
        
        case id, email, image
        case firstName = "first_name"
        case middleName = "middle_name"
        case lastName = "last_name"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
        middleName = try values.decodeIfPresent(String.self, forKey: .middleName)
        lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
    }
        
}
