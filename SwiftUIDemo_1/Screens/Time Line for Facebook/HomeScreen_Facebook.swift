//
//  HomeScreen_Facebook.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 15/02/2021.
//

import SwiftUI

struct HomeScreen_Facebook: View {
    
    @State var label_text = ""
    
    var body: some View {
        
        NavigationView{
            ScrollView {
                Head_Line()
                
                UserStory_Line()
                
                VStack {
                    HStack {}
                        .frame(height: 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray).opacity(0.4)
                        .padding(.top)
                    
                    HStack {
                        
                        
                            
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack(spacing: 0) {
                                Create_Room()
                                StoryItem(profile: "p_5", story: "post_01", lastname: "Camila", firstname: "Micheal")
                                StoryItem(profile: "p_2", story: "tech_3", lastname: "Jon", firstname: "Hengy")
                                StoryItem(profile: "p_4", story: "tech_1", lastname: "Alina", firstname: "Criss")
                                StoryItem(profile: "p_3", story: "tech_2", lastname: "Jon", firstname: "Hengy")
                                StoryItem(profile: "p_1", story: "tech_3", lastname: "Camila", firstname: "Micheal")
                                StoryItem(profile: "p_6", story: "post_01", lastname: "Bill", firstname: "Gates")
                                
                                
                                

                                
                            }
                            

                            
                        }
                            
                        
                     
                    }
                }
                HStack {}
                    .frame(height: 10)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray).opacity(0.4)
                    
                    //.padding(.bottom, 5)

                PostLine()
                Post_Line_Double_Img()
                PostLine(img_View: "post_01",img_profile: "p_3")
                Post_Line_Double_Img()
                PostLine()
                PostLine()
                
                
                
                
            }
            .navigationBarItems(
                leading: facebook_Title(),
                trailing: navigationBarIcons_Trailing())
            .navigationBarTitle("", displayMode: .inline)
            
            
        }
        
        
       
        
        
        
        
       
        
    }
}

struct HomeScreen_Facebook_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen_Facebook()
    }
}

struct navigationBarIcons_Trailing: View {
    var body: some View {
        Group {
            HStack {
                ZStack {
                    Circle()
                        .clipShape(Circle())
                        .foregroundColor(.gray).opacity(0.4)
                        .frame(width: 40, height: 40)
                    
                    Image("ic_searcher")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                ZStack {
                    Circle()
                        .clipShape(Circle())
                        .foregroundColor(.gray).opacity(0.4)
                        .frame(width: 40, height: 40)
                    
                    ZStack() {
                        
                        Image("ic_messanger")
                            .resizable()
                            .frame(width: 27, height: 27)
                        ZStack {
                            Circle()
                                .clipShape(Circle())
                                .frame(width: 11, height: 11)
                                .foregroundColor(.red)
                                .padding(.leading)
                                .padding(.bottom)
                            Text("3")
                                .font(Font.system(size: 8))
                                .foregroundColor(.white)
                                .padding(.leading)
                                .padding(.bottom)
                            
                        }
                        
                    }
                }
            }
        }
    }
}

struct facebook_Title: View {
    var body: some View {
        Text("facebook")
            .bold()
            .font(Font.system(size: 25))
            .foregroundColor(.blue)
        
    }
}

struct Head_Line: View {
    var body: some View {
        VStack {
            HStack {
                Image("p_6")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding()
                
                
                    
                    
                    
                    RoundedRectangle(cornerRadius: 25)
                        .frame(height: 50)
                        .padding()
                        .foregroundColor(.gray).opacity(0.1)
                        .overlay(HStack {
                            Button(action: {}, label: {
                                Text("What's on your mind?")
                                    .font(Font.system(size: 18))
                                    .foregroundColor(.black)
                                    .frame(height: 45)
                                    .padding(.leading, 15)
                                    .padding(.trailing, 100)
                                    .cornerRadius(25)

                            })
                    })
                    
                
            }
            .frame(height: 90)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            
            HStack {
                
            }.frame(height: 1)
            .frame(maxWidth: .infinity)
            .background(Color.gray).opacity(0.4)
 
            // ........Live_Photoes_Room........
            HStack() {
                Spacer()
                Group{
                    HStack {
                        Image("ic_live").resizable().frame(width: 30, height: 30)
                        Text("Live").foregroundColor(.gray).bold()
                    }
                    Spacer()
                    HStack {}
                        .frame(width: 1)
                        .frame(maxHeight: .infinity)
                        .background(Color.gray).opacity(0.4)
                    
                    Spacer()
                    HStack {
                        Image("ic_photoes")
                        Text("Photo").foregroundColor(.gray).bold()
                    }
                    Spacer()
                    HStack {}
                        .frame(width: 1)
                        .frame(maxHeight: .infinity)
                        .background(Color.gray).opacity(0.4)
                    Spacer()
                    HStack {
                        Image("ic_video_call").resizable()
                            .foregroundColor(.black)
                            .frame(width: 30, height: 30)
                        Text("Room").foregroundColor(.gray).bold()
                    }
                }
                Spacer()
            }.padding(.top)
            .frame(height: 50)
            
            
            
        }
    }
}

struct UserStory_Line: View {
    var body: some View {
        VStack {
            HStack {}
                .frame(height: 10)
                .frame(maxWidth: .infinity)
                .background(Color.gray).opacity(0.4)
                .padding(.top)
                .padding(.bottom,1)
            
            HStack {
                ScrollView( .horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        
                        
                        CreateRoom()
                        
                        
                        ItemStory(story_img: "p_5", item_name: "Camila0788 ", isOnline: false)
                        ItemStory(story_img: "p_2", item_name:"Advard993 ", isOnline: true)
                        ItemStory(story_img: "p_3", item_name:"Samanta124 ", isOnline: false)
                        ItemStory(story_img: "p_1", item_name:"Jonson09 ", isOnline: true)
                        ItemStory(story_img: "p_5", item_name:"Cristi23 ", isOnline: false)
                        ItemStory(story_img: "p_3", item_name:"Angela324 ", isOnline: false)
                        ItemStory(story_img: "p_5", item_name:"Camila564 ", isOnline: true)
                        ItemStory(story_img: "p_6", item_name:"Bill327", isOnline: true)
                    }
                    
                    
                }
                
            }
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            //.background(Color.blue).opacity(0.5)
            
            
        }
    }
}

struct CreateRoom: View {
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 115, height: 60)
                .foregroundColor(.blue).opacity(0.6)
                .padding()
                .padding(.trailing)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 110, height: 55)
                .padding()
                
                
                .foregroundColor(.white)
                .overlay(HStack {
                    
                    Image("ic_addStory-1").resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text("Create Room").bold()
                    
                })
                .padding(.trailing)
        }
    }
}
