//
//  LoginPageView.swift
//  LoginPageUmai_SwiftUI_MVVM
//
//  Created by Muhammad Usman on 11/07/2023.
//

import SwiftUI

struct LoginPageView: View {
    
    @ObservedObject var userVM = loginViewModel()
    var body: some View {
        ZStack{
            Image("Background_Image")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.4)
                .background(.black)
        
            VStack{
                
                Image("Logo")
                    .frame(width: 180, height: 60)
                    .scaledToFit()
                    .padding(.top, 20)
                Spacer()
                
                ZStack {
                    VStack(alignment: .center, spacing: 40) {
                        
                        VStack(alignment: .center, spacing: 16) {
                            
                            // H3, 24pt, SF Pro, Bold
                            Text("Log in")
                              .font(
                                Font.custom("SF Pro Display", size: 24)
                                  .weight(.bold)
                              )
                              .foregroundColor(.white)
                            
                            // Paragraph, 16pt, SF Pro, Regular
                            Text("Welcome! Please enter your details")
                              .font(Font.custom("SF Pro Display", size: 16))
                              .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.96))
                        }
                        
                        
                        VStack(alignment: .center, spacing: 16){
                            
                            VStack(alignment: .center, spacing: 2){
                                
                                TextField("Email", text: $userVM.email)
                                    .padding(.vertical,16)
                                    .padding(.horizontal, 32)
                                    .background(Image("Send_email"),alignment: .leading)
                                    .padding(.all,16)
                                    .frame(width: 340,height: 60)
                                    .background(.white)
                                    .cornerRadius(16, corners: .topLeft)
                                    .cornerRadius(16, corners: .topRight)
                                
                                
                                
                                TextField("Password", text: $userVM.password)
                                
                                    .padding(.vertical,16)
                                    .padding(.horizontal, 32)
                                    .background(Image("Password_lock"),alignment: .leading)
                                    .padding(.all,16)
                                    .background(Image("Eye_hide"), alignment: .trailing)
                                    .padding(.trailing, 21)
                                    .frame(width: 340,height: 60)
                                    .background(.white)

                                    .cornerRadius(16, corners: .bottomLeft)
                                    .cornerRadius(16, corners: .bottomRight)
//                                    .overlay(
//
//                                        RoundedRectangle(cornerRadius: 16, style: .continuous)
//                                                .stroke(.blue, lineWidth: 4)
//                                        )
////                                    .border(Color.green,width: 2)

                                
                                
                                // H5, 16pt, SF Pro, Bold
//                                Text("Incorrect login details")
//                                  .font(
//                                    Font.custom("SF Pro Display", size: 16)
//                                      .weight(.bold)
//                                  )
//                                  .foregroundColor(Color(red: 0.9, green: 0.33, blue: 0.35))
//                                  .padding(.trailing,185)
                                    
                            }
                            
                            VStack(alignment: .trailing, spacing: 16){
                               
                                
//                                NavigationLink {
//                                    LoggedInView()
//                                } label: {
//                                    Text("Log in")
//                                        .foregroundColor(.white)
//                                        .frame(width: 340, height: 60)
//
//                                }
//                                .frame(width: 340, height: 60)
//                                .background(userVM.isSignUpComplete ? .blue : Color(red: 0.1, green: 0.65, blue: 0.6))
//                                .cornerRadius(16, corners: .allCorners)
                                

                                
                                
                                Button {
                                    self.userVM.login()
                                } label: {
                                    Text("Log in")
                                        .foregroundColor(.white)
                                        .frame(width: 340, height: 60)
                                        
                                }
                                .frame(width: 340, height: 60)
                                .background(userVM.loggedin ? .blue : Color(red: 0.1, green: 0.65, blue: 0.6))
                                .cornerRadius(16, corners: .allCorners)
                                
                                
                                
                                
                                
                                
                                HStack(alignment: .center, spacing: 2) {
                                    Text("Forgot password?")
                                    .font(Font.custom("SF Pro Display", size: 14))
                                    .underline()
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    
                                    Image("Password_lock_forgot")
                                      .frame(width: 18, height: 18)
                                }
                                .padding(0)
                            }
                           
                            
                            
                            
                        }
                    }
                    
                }
                .frame(width: 388, height: 367)
                .background(.black.opacity(0.5))
                .cornerRadius(32)

                Spacer()
                
            }
            
                
        }
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
