//
//  Profile_Post_Image_Line.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 17/02/2021.
//

import SwiftUI

struct Profile_Post_Image_Line: View {
    
    
    var img_View = "post_02"
    
    
    var body: some View {
        
        
        VStack(alignment: .leading ) {
            
            

            
            //......Header..........
            
            HStack{
                Image("p_3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(30)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.blue.opacity(0.6), lineWidth: 2.5)
                    )
                
        
                VStack(alignment: .leading) {
                    HStack {
                        Text("Alina Jonson")
                            .font(Font.system(size: 14))
                            .bold()
                        Text("updated her profile picture.")
                    }
                    HStack(alignment: .bottom) {
                        Text("7 h")
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
                .clipShape(Circle())
                .overlay(
                    
                    ZStack {
                        
                        Circle().stroke(Color.gray, lineWidth: 6)
                        Circle().stroke(Color.white, lineWidth: 3)
                        
                    }
                )

                
            //.......Horizantal Bar.......
            
            HStack(spacing: 5){
                HStack() {
                    Image("ic_hand_like2").resizable()
                        .frame(width: 25, height: 25)
                        .overlay(Circle().stroke(Color.white.opacity(0.6), lineWidth: 2.5))
                    
                    
                }
                Text("3.1K").foregroundColor(.gray)
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

struct Profile_Post_Image_Line_Previews: PreviewProvider {
    static var previews: some View {
        Profile_Post_Image_Line()
    }
}
