//
//  HomeScreen.swift
//  SwiftUIDemo_1
//
//  Created by Otabek Tuychiev on 08/02/2021.
//

import SwiftUI


struct HomeScreen: View {
    
    @EnvironmentObject var status: Status
    
    var body: some View {
        
        NavigationView{
            List {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        AddStory()
                        ItemStory(story_img: "p_3")
                        ItemStory(story_img: "p_5")
                        ItemStory(story_img: "p_2")
                        ItemStory(story_img: "p_3")
                        ItemStory(story_img: "p_1")
                        ItemStory(story_img: "p_6")
                        ItemStory(story_img: "p_5")
                        ItemStory(story_img: "p_2")
                        ItemStory(story_img: "p_3")
                        
                    }
                    
                }.frame(height: 100)
                
                ItemPost(img_View: "tech_1", img_View2: "tech_3")
                ItemPost(img_View: "tech_2", img_View2: "tech_1")
                ItemPost(img_View: "tech_3", img_View2: "tech_2")
                ItemPost(img_View: "tech_1", img_View2: "tech_3")
                ItemPost(img_View: "tech_2", img_View2: "tech_3")
                ItemPost(img_View: "tech_3", img_View2: "tech_1")

               

            }.listStyle(PlainListStyle())
            .navigationBarTitle("Insta Plus",displayMode: .inline).font(Font.custom("Pacifico-Regular", size: 30))
            .navigationBarItems(leading: Image("ic_menu"),
                                trailing:
                                    Button(action: {
                                        UserDefaults.standard.set(false, forKey: "status")
                                            NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                                    },
                                    label: {
                                    Image(systemName: "camera")
                                        .foregroundColor(.black)
                                })
                            )
            
            






        }
    }

}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


//Button(action: {
//
//    UserDefaults.standard.set(false, forKey: "status")
//    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
//}, label: {
//    HStack {
//        Spacer()
//        Image(systemName: "trash")
//            .foregroundColor(.white)
//        Text("Logout").bold()
//            .foregroundColor(.white)
//        Spacer()
//    }
//    .foregroundColor(.white)
//    .frame(height: 55)
//    .background(Color.green).opacity(0.9)
//    .cornerRadius(25)
//
//})
