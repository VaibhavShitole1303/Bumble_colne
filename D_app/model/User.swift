//
//  User.swift
//  D_app
//
//  Created by Neosao Services on 11/04/24.
//

import Foundation

struct UserArray:Codable{
    let users:[User]
    let total,skip,limit:Int
}

struct User:Codable, Identifiable{
    let id:Int
    let firstName,lastName:String
    let age:Int
    let email,phone,uesrname,password:String
    let image :String
    let height :Int
    let weight :Double
    var work:String{
        "Worker as Android Dev"
    }
    var educationL:String{
        "Graduate Degree"
    }
    
    var aboutME:String{
        "This is about me ......................!"
    }
    
    static var mock:User{
        User(
    id: 11,
    firstName: "Vaibhav",
    lastName: "Shitole",
    age: 24,
    email: "Vaibhav@gmail.com",
    phone: "1234567890",
    uesrname: "V_S_11", 
    password: "1234",
    image: Constants.randoumImage,
    height: 178, weight: 75.00)
    }

}
