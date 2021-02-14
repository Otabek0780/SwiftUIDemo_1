//
//  Udemy_Practice_SwiftUI_1.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 12/02/2021.
//

import SwiftUI

//......i Card.................

struct Udemy_Practice_SwiftUI_1: View {
    var body: some View {
        ZStack{
            Color(.systemGreen)
                .opacity(0.7)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                
                ZStack {
                    Image("p_4")
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
                
                Text("Otabek Tuychiev")
                    
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("iOS Dev")
                    .foregroundColor(.white)
                    .opacity(0.8)
                    .font(.system(size: 25))
                    .padding(EdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0))
                Divider()
                
                infoSpace(img_View: "phone.fill", text: "+82 010 7924 0780")
                infoSpace(img_View: "envelope.fill", text: "otabek@gmail.com")
                
                Divider().padding(.bottom)
                HStack(alignment: .center, spacing: 5){
                    
                    Text("De Pro")
                        .bold()
                        .padding(.top)
                        .font(.system(size: 40))
                        .opacity(0.5)
                    Image(systemName: "applelogo")  .opacity(0.5)
                    
                }.padding(.top)
                
                
        
                
            }
            
        }
    }
}

struct Udemy_Practice_SwiftUI_1_Previews: PreviewProvider {
    static var previews: some View {
        Udemy_Practice_SwiftUI_1()
    }
}

struct infoSpace: View {
    
    let img_View: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .padding()
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: img_View)
                    .foregroundColor(.green)
                Text(text)
            })
    }
}
