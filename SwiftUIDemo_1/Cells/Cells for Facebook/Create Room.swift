//
//  Create Room.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 16/02/2021.
//

import SwiftUI

struct Create_Room: View {
    
    
    var body: some View {
        Group {
            ZStack(alignment: .bottom) {
                
                VStack(spacing: 0) {
                    Image("tech_3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 170)
                    Text("Create a Story").bold()
                        .frame(width: 150, height: 80)
                        .background(Color.gray.opacity(0.1))
                        
                }
                
                Image("ic_add")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .background(Color.clear)
                    .clipShape(Circle())
                    .padding(.bottom, 60)
                    
                
                
                
                }.frame(width: 150, height: 250)
            .scaledToFit()
            .cornerRadius(15)
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 0))
            
        }
    }
}

struct Create_Room_Previews: PreviewProvider {
    static var previews: some View {
        Create_Room()
    }
}
