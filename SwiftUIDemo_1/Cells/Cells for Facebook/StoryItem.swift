//
//  StoryItem.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 16/02/2021.
//

import SwiftUI

struct StoryItem: View {
    
    var profile = "p_6"
    var story = "post_Image_4"
    var lastname = "Bill"
    var firstname = "Gates"
    
    var body: some View {
        ZStack(alignment: .leading){
            
            Image(story)
                .frame(width: 150, height: 250)
                .scaledToFit()
            
            VStack {
                Image(profile)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(30)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.blue.opacity(0.7), lineWidth: 2.5)
                )
                Spacer()
                Text(lastname).fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(Font.system(size: 17))
                Text(firstname).fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(Font.system(size: 17))
                    
            }.padding()
            
            
        }.frame(width: 150, height: 250)
        .scaledToFit()
        .cornerRadius(15)
        .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 0))
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem()
    }
}
