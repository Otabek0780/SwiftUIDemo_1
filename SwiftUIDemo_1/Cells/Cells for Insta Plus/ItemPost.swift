//
//  ItemPost.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 14/02/2021.
//

import SwiftUI

struct CustomView: View {
    
    var img_leading = ""
    var img_trailing = ""
 
    var body: some View {
        HStack(spacing: 0) {
            Image(img_leading)
                .resizable()
                .aspectRatio(1, contentMode: .fit)

            Image(img_trailing)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
        }.frame(maxWidth: .infinity)
    }
}


struct ItemPost: View {
    
    var img_View = "tech_3"
    var img_View2 = "tech_1"
    
    var body: some View {
        
        VStack(alignment: .leading ) {
            
            //......Header..........
            
            HStack{
                Image("p_2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(30)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.orange.opacity(0.6), lineWidth: 2.5)
                    )
                
            
                Text("jonathan0780")
                    .font(Font.system(size: 14))
                    .bold()
                    //.padding(.trailing, 5)
                Text("follow")
                    .font(Font.system(size: 16))
                    .bold()
                    .foregroundColor(.blue)
                Spacer()
                Button(action: {
                    
                },
                label: {
                    Image("ic_more")
                })
                .padding(.trailing)
            }
            
            
            //......Post Image......
//            Image(img_View)
//                .resizable()
//                .scaledToFit()
//                .padding(.leading, -15)
//                .padding(.trailing, -15)
            CustomView(img_leading: img_View, img_trailing: img_View2)
                
            //.......Horizantal Bar.......
            
            HStack(alignment: .center, spacing: 10) {
                
                Image("ic_like")
                Image(systemName: "message").resizable().frame(width:20, height: 20)
                Image("ic_send")
                
                Spacer()
                Image("ic_bookmark")
            
            }
            
            //..........Description...........
            Text("Liked by \(Text("americanboy13tm").bold()) and \(Text("others").bold())")
                .font(Font.system(size: 13.5))
                .padding(.bottom, 1)
            
            HStack {
                Text("jonathan0780")
                    .font(Font.system(size: 13.5))
                    .bold()
                Text("I LOVE SUSHI\(Text("...more").bold().foregroundColor(.gray))").font(Font.system(size: 13.5))
                
            }
            //....Comment Line......
            Text("View all 422 comments").font(Font.system(size: 13.5)).padding(.bottom, 1).foregroundColor(.gray)
            HStack{
                Image("p_6")
                    .resizable()
                    .frame(width: 47, height: 47)
                    .cornerRadius(30)
                    .clipShape(Circle())
                
            
                Text("Add a comment...")
                    .font(Font.system(size: 14))
                    .bold()
                    .foregroundColor(.gray)
                    
                
                Spacer()
                // 2 buttons place....
                Button(action: {
                    
                },
                label: {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .font(Font.system(size: 12))
                        .overlay(
                            Circle().stroke(Color.black, lineWidth: 1)
                    )
                })
                .padding(.trailing)
                
                
            }
            Text("2 hours ago")
                .font(Font.system(size: 10))
                .bold()
                .foregroundColor(.gray)
        
            
        }
        
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
