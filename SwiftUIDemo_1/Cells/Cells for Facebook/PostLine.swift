//
//  PostLine.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 16/02/2021.
//

import SwiftUI

//struct CustomView_Facebook: View {
//
//    var img_leading = ""
//    var img_trailing = ""
//
//    var body: some View {
//        HStack(spacing: 0) {
//            Image(img_leading)
//                .resizable()
//                .aspectRatio(1, contentMode: .fit)
//
//            Image(img_trailing)
//                .resizable()
//                .aspectRatio(1, contentMode: .fit)
//        }.frame(maxWidth: .infinity)
//    }
//}

struct PostLine: View {
    
    
    var img_View = "tech_3"
    var img_profile = "p_7"
    
    
    var body: some View {
        
        
        VStack(alignment: .leading ) {
            
            

            
            //......Header..........
            
            HStack{
                Image(img_profile)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(30)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.blue.opacity(0.6), lineWidth: 2.5)
                    )
                
        
                VStack(alignment: .leading) {
                    Text("tech.guy_1356")
                        .font(Font.system(size: 14))
                        .bold()
                    HStack(alignment: .bottom) {
                        Text("2 d")
                            .font(Font.system(size: 14))
                            .foregroundColor(.gray)
                        Image("ic_public")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .opacity(0.6)
                            
                    }
                }
                    
                
                Spacer()
                Button(action: {
                    
                },
                label: {
                    Image("ic_more")
                        .opacity(0.6)
                })
                
            }.padding(.trailing)
            .padding(.leading)
            .padding(.top)
            
            
//            ......Post Image......
            Image(img_View)
                .resizable()
                .scaledToFit()
                .padding(.leading, -15)
                .padding(.trailing, -15)
//            CustomView(img_leading: img_View, img_trailing: img_View2)
                
            //.......Horizantal Bar.......
            
            HStack(spacing: 5){
                HStack(spacing: -6) {
                    Image("ic_hand_like2").resizable()
                        .frame(width: 25, height: 25)
                        .overlay(Circle().stroke(Color.white.opacity(0.6), lineWidth: 2.5))
                    
                    Image("heart").resizable()
                        .frame(width: 22, height: 22)
                        .overlay(Circle().stroke(Color.white.opacity(0.6), lineWidth: 2.5))
                }
                Text("27.3K").foregroundColor(.gray)
                    .font(Font.system(size: 15))
                Spacer()
                Text("367 Comments").foregroundColor(.gray)
                    .font(Font.system(size: 15))
                Spacer()
                Text("185 Shares").foregroundColor(.gray)
                    .font(Font.system(size: 15))
            }.padding(.all, 5)
            Divider()
            
            HStack {
                
                HStack(alignment: .center, spacing: 10) {
                    
                    Image("ic_hand_like").opacity(0.6)
                    Text("Like")
                        .foregroundColor(.gray)
                
                }
                Spacer()
                HStack(alignment: .center, spacing: 10) {
                    
                    Image(systemName: "message").resizable().frame(width:20, height: 20).opacity(0.6)
                    Text("Comment")
                        .foregroundColor(.gray)
                }
                Spacer()
                HStack(alignment: .center, spacing: 10) {
                    
                    Image("ic_reply").opacity(0.6)
                    Text("Share")
                        .foregroundColor(.gray)
                }
            }.padding(.leading).padding(.trailing)
            
            HStack {}
                .frame(height: 10)
                .frame(maxWidth: .infinity)
                .background(Color.gray).opacity(0.4)
                .padding(.top, 5)
            
        
            
        }
        
        
        
    }
}

struct PostLine_Previews: PreviewProvider {
    static var previews: some View {
        PostLine()
    }
}
