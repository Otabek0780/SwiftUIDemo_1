//
//  Animation_Views.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 13/02/2021.
//

import SwiftUI

struct Animation_Views: View {
    
    @State var play = 0
    
    
    var body: some View {
       
        VStack {
            LottieView(name: "facebook", play: $play)
                .frame(maxWidth: .infinity)

            RoundedRectangle(cornerRadius: 25)
                .frame(width: 300,height: 70)
                .padding()
                .foregroundColor(.blue).opacity(0.8)
                .overlay(HStack {
                    Image(systemName: "play")
                        .foregroundColor(.white)
                        .blur(radius: 0.4)
                        .opacity(play != 0 ? 0.3 : 1.0)
                    Button(action: {
                            self.play += 1
                        
                    },
                    label: {
                        Text("Let's start chatting").bold()
                            .foregroundColor(.white)
                    })
                })



        }
    }
}

struct Animation_Views_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Views()
    }
}
