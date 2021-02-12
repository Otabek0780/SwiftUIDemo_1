//
//  TabScreen.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 12/02/2021.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        
        TabView {
            
//            Text("Home")
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color.black.opacity(0.3))
////                .tabItem({
////                    Image("ic_comment")
////                    Text("Home")
////                })
            Image("img_1")
                //.resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .tabItem({
//                    Image("ic_camera")
//                    Text("Camera")
//                })
            
            Image("img_6")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .scaledToFill()
            
            Image("img_4")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .scaledToFill()
            Image("img_7")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .scaledToFill()
        }
        
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
