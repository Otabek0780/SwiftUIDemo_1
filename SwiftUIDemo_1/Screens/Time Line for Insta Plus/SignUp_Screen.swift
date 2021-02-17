//
//  SignUp_Screen.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 13/02/2021.
//

import SwiftUI

struct SignUp_Screen: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    
    
    var body: some View {
        
        ZStack {
            Color(.systemGreen)
                .opacity(0.7)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10) {
                
                
                
                Text("Insta Plus")
                    .bold()
                    .padding(.bottom, 25)
                    .foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 30))
                
                Spacer()
                
                TextField("Firstname", text: $firstname)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.white)
                    .cornerRadius(25)
                    .padding(.trailing)
                    .padding(.leading)
                TextField("Lastname", text: $lastname)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.white)
                    .cornerRadius(25)
                    .padding(.trailing)
                    .padding(.leading)
                TextField("Email", text: $email)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.white)
                    .cornerRadius(25)
                    .padding(.trailing)
                    .padding(.leading)
                TextField("Address", text: $address)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.white)
                    .cornerRadius(25)
                    .padding(.trailing)
                    .padding(.leading)
                SecureField("Password", text: $password)
                    .frame(height: 45)
                    .padding(.leading, 15)
                    .background(Color.white)
                    .cornerRadius(25)
                    .padding(.trailing)
                    .padding(.leading)
                    
                Button(action: {
                    
                }, label: {
                    HStack {
                        Spacer()
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .font(Font.custom("Pacifico-Regular", size: 20))
                        Spacer()
                    }
                    .foregroundColor(.white)
                    .frame(height: 45)
                    .background(Color.blue)
                    .cornerRadius(25)
                    .padding(.trailing)
                    .padding(.leading)
                    
                })
                
                Spacer()
                
                HStack {
                    Text("Already have an account ?").foregroundColor(.white)
                    Button(action: {
                        presentation.wrappedValue.dismiss()
                    },
                    label: {
                        Text("Sign In")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: 19))
                    })
                                        
                }
                
                
            }
            
        }
    }
}

struct SignUp_Screen_Previews: PreviewProvider {
    static var previews: some View {
        SignUp_Screen()
    }
}

