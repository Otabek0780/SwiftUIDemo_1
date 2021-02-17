//
//  AddStory.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 14/02/2021.
//

import SwiftUI

struct AddStory: View {
    
    var myStory_img = "p_6"
    
    var body: some View {
        
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(myStory_img)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(30)
                    .clipShape(Circle())
                Image("ic_add")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .background(Color.clear)
                    .clipShape(Circle())
            }
                
                
            Text("Your Story").font(Font.system(size: 14))
        }
        .padding(.trailing)
        .frame(height: 100)
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
