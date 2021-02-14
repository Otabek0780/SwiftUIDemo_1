//
//  ItemStory.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 14/02/2021.
//

import SwiftUI

struct ItemStory: View {
    var story_img = "p_6"
    
    var body: some View {
        VStack {
            Image(story_img)
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(30)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.red.opacity(0.6), lineWidth: 2.5)
                )
            Text("Your Story").font(Font.system(size: 14))
        }
        .padding(.trailing)
        .frame(height: 100)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
