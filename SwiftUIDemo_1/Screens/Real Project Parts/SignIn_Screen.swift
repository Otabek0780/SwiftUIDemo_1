//
//  SignIn_Screen.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 13/02/2021.
//

import SwiftUI

struct SignIn_Screen: View {
    
    @State var email = ""
    @State var password = ""
    @State var isModel = false
    @EnvironmentObject var status: Status
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGreen)
                    .opacity(0.7)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 10) {
                    
                    Spacer()
                    
                    Text("Insta Plus")
                        .bold()
                        .padding(.top)
                        .foregroundColor(.white)
                        .font(Font.custom("Pacifico-Regular", size: 30))
                    
                    profileImageView(img_View: "p_4").padding(.bottom, 30)
                    
                    TextField("User ID", text: $email)
                        .frame(height: 45)
                        .padding(.leading, 15)
                        .background(Color.white)
                        .cornerRadius(25)
                    
                    SecureField("User PW", text: $password)
                        .frame(height: 45)
                        .padding(.leading, 15)
                        .background(Color.white)
                        .cornerRadius(25)
                        
                    Button(action: {
                        
                        UserDefaults.standard.set(true, forKey: "status")
                        NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Sign In")
                                .foregroundColor(.white)
                                .font(Font.custom("Pacifico-Regular", size: 20))
                            Spacer()
                        }
                        .foregroundColor(.white)
                        .frame(height: 45)
                        .background(Color.blue)
                        .cornerRadius(25)
                        
                    })
                    
                    Spacer()
                    
                    HStack {
                        Text("Don't have an account ?").foregroundColor(.white)
                        NavigationLink (
                            destination: SignUp_Screen(),
                            label: {
                                Text("Sign Up")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.system(size: 19))
                            })
                    
                                            
                    }
                    
                    
                }
                
            }
        }
        
        
     
    
        
    }
    
}
struct SignIn_Screen_Previews: PreviewProvider {
    static var previews: some View {
        SignIn_Screen()
    }
}

struct profileImageView: View {
    
    let img_View: String
    
    var body: some View {
        ZStack {
            Image(img_View)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .clipShape(Circle())
                .overlay(
                    
                    ZStack {
                        Text("SwiftUI")
                            .foregroundColor(.white)
                            .opacity(0.8)
                            .font(.system(size: 25))
                            .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 70))
                        
                        Circle().stroke(Color.white, lineWidth: 5)
                        
                    }
                )
            
        }
    }
}
