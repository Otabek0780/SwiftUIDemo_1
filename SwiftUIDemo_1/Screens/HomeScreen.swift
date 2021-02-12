//
//  HomeScreen.swift
//  SwiftUIDemo_1
//
//  Created by Otabek Tuychiev on 08/02/2021.
//

import SwiftUI



struct HomeScreen: View {
    
   
    var body: some View {
        
        NavigationView{
            List {
                
                Image("p_1")
                    .resizable()
                    .scaledToFill()
                Image("p_3")
                    .resizable()
                    .scaledToFill()
                Image("p_2")
                    .resizable()
                    .scaledToFill()
                Image("p_1")
                    .resizable()
                    .scaledToFill()
                
            }
            .navigationBarTitle("Home",displayMode: .inline)
            .navigationBarItems(leading: Image("ic_menu"),
                                trailing: HStack{
                                    Image("ic_camera")
                                    Image(systemName: "plus")
                                })


            
            
            
            
        }
    }

}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
