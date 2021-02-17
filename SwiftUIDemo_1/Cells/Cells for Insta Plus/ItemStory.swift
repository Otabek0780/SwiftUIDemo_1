//
//  ItemStory.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 14/02/2021.
//

import SwiftUI

struct ItemStory: View {
    var story_img = "p_6"
    var item_name = "blabla"
    var isOnline = false
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(story_img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .cornerRadius(30)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.blue.opacity(0.7), lineWidth: 2.5)
                )
                if isOnline {
                    ZStack {
                        Circle()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: 18, height: 18)
                            .foregroundColor(.green)
                        
                    }
                    
                }
                    
            }
            
            Text(item_name).font(Font.system(size: 14))
        }
        .padding(.trailing,5)
        .frame(height: 100)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
