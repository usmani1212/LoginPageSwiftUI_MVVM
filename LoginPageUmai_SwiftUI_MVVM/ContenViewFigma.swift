//
//  ContenViewFigma.swift
//  LoginPageUmai_SwiftUI_MVVM
//
//  Created by Muhammad Usman on 07/07/2023.
//

import SwiftUI

struct ContenViewFigma: View {
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
                
                
                
                
                
                
                // Design made by using the figma dev (some changed done by myself but 80% of it was copy pasting from Figma Dev)
                ZStack {
                    
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
                            .padding(0)
                            
                            //button
                            VStack(alignment: .trailing, spacing: 16) {
                                //correct fields
                                VStack(alignment: .leading, spacing: 1) {
                                    
                                    //email field
                                    HStack(alignment: .center, spacing: 16) {
                                        
                                        
                                        Image("Send_email")
                                          .frame(width: 24, height: 24)
                                        
                                        // Paragraph, 16pt, SF Pro, Regular
                                        Text("E-mail")
                                          .font(Font.custom("SF Pro Display", size: 16))
                                          .foregroundColor(Color(red: 0.52, green: 0.57, blue: 0.6))
                                        

                                    }
                                    .padding(.leading, 16)
                                    .padding(.vertical, 18)
                                    .frame(width: 340, height: 60, alignment: .leading)
                                    .background(.white)
                                    .cornerRadius(16, corners: .topLeft)
                                    .cornerRadius(16, corners: .topRight)
                                    
                                    
                                    //password field
                                    HStack(alignment: .center, spacing: 16) {
                                        
                                        
                                        Image("Password_lock")
                                          .frame(width: 24, height: 24)
                                        
                                        // Paragraph, 16pt, SF Pro, Regular
                                        Text("Password")
                                          .font(Font.custom("SF Pro Display", size: 16))
                                          .foregroundColor(Color(red: 0.52, green: 0.57, blue: 0.6))
                                        
                                        Spacer()
                                        
                                        Image("Eye_hide")
                                          .frame(width: 24, height: 24)
                                          .padding(.trailing,21)
                                          

                                    }
                                    .padding(.leading, 16)
                                    .padding(.vertical, 18)
                                    .frame(width: 340, height: 60, alignment: .leading)
                                    .background(.white)
                                    .cornerRadius(16, corners: .bottomLeft)
                                    .cornerRadius(16, corners: .bottomRight)
                                    
                                }
                                .padding(0)
                                .frame(width: 340, height: 121, alignment: .leading)
                                
                                
                                
                                HStack {
                                    
                                    ZStack {
                                        Button {
                                            
                                        } label: {
                                            // Paragraph, 16pt, SF Pro, Regular
                                            Text("Log in")
                                              .font(Font.custom("SF Pro Display", size: 16))
                                              .multilineTextAlignment(.center)
                                              .foregroundColor(.white)
                                        }
                                    }
                                    .frame(width: 340, height: 60)
                                    .cornerRadius(16)
                                    .background(Color(red: 0.1, green: 0.65, blue: 0.6))
                                    
                                    Button {
                                        
                                    } label: {
                                        // Paragraph, 16pt, SF Pro, Regular
                                        Text("Log in")
                                          .font(Font.custom("SF Pro Display", size: 16))
                                          .multilineTextAlignment(.center)
                                          .foregroundColor(.white)
                                    }

                                }
                                .padding(0)
                                .frame(width: 340, height: 60, alignment: .center)
                                .cornerRadius(16)
                                
                                
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
                            .padding(0)
                        }
                        .padding(0)
                    }
                    .frame(width: 340, height: 335)
                }
                .frame(width: 388, height: 367)
                .background(.black.opacity(0.5))
                .cornerRadius(32)


                Spacer()
                
            }
            
                
        }
    }
}

struct ContenViewFigma_Previews: PreviewProvider {
    static var previews: some View {
        ContenViewFigma()
    }
}
