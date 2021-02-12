//
//  DetailScreen.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 10/02/2021.
//

import SwiftUI



struct DetailScreen: View {
    
    
    
    
//
//    @State var showPresent = false
//    @State var img = "person_1"
//    @State var p_1 = "p_1"
//    @State var DeliveredData = "Congratulation! Photo succsessfully delivered :)"
//
//    @State var DefultData = "Ups, Data not delivered yet!"
//
//
//    func afterRecieved(data: String, image: String) {
//        DefultData = data
//        img = image
//    }

    
    var body: some View {
        Text("Detail")
//        NavigationView{
//            VStack{
////                NavigationLink(
////                    destination: PushingScreen(),
////                    label: {
////                        Text("Navigate")
////                    })
//
//                Image(img)
//                    .resizable()
//                    .frame(width: 200, height: 200)
//                    .scaledToFit()
//                    .background(Color.clear)
//
//                Text(DefultData).padding()
//
//                Button(action: {
//                    showPresent.toggle()
//                },
//                label: {
//                    Text("Enterance to Present Screen")
//                }).sheet(isPresented: $showPresent, content: {
//                    PresentScreen(img: p_1, DefultData: DeliveredData, delegate: self)
//                })
//
//
//
//
//            }
//            .navigationBarTitle("Home",displayMode: .inline)
//            .navigationBarItems(leading: Image("ic_menu"),
//                                trailing: HStack{
//                                    Image("ic_camera")
//                                    Image(systemName: "plus")
//                                })
//
//
//
//
//
//
//        }
        
    }
    
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
