//
//  userViewModel.swift
//  LoginPageUmai_SwiftUI_MVVM
//
//  Created by Muhammad Usman on 10/07/2023.
//

import Foundation
import SwiftUI
class loginViewModel: ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    @Published var loggedin = false
    
    public var userUsman = userModel(firstName: "Muhammad", lastName: "Usman", email: "usman@gmail.com", password: "usman", age: 26)
    
    
    func login(){
        if !email.isEmpty && !password.isEmpty{
        
            if email == userUsman.email && password == userUsman.password{
                loggedin = true
            }
            else {
                loggedin = false
            }
        }
        else{
           loggedin = false
        }
    }
    
    
}
