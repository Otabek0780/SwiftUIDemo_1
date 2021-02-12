//
//  PresentScreen.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 12/02/2021.
//

import SwiftUI

struct PresentScreen: View {
    @State var p_2 = "p_2"
    @State var DeliveredData = "Congratulation! Photo succsessfully delivered :)"
    @State var img = "person_1"
    @Environment(\.presentationMode) var presentation
    
    var DefultData = "Ups, Data not delivered yet!"
    var delegate: BindingProtocol_1?
    
    var body: some View {
        NavigationView {
            
            VStack{
                
                Image(img)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                    .background(Color.clear)
                
                Text(DefultData)
                
                Button(action: {
                    delegate?.afterRecieved(data: DeliveredData, image: p_2)
                    presentation.wrappedValue.dismiss()
                },
                       label: {
                        Text("Return data to Detail Screen").padding()
                })
                    
            }.navigationBarTitle("PresentScreen", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                presentation.wrappedValue.dismiss()
            },
            label: {
                Image("ic_back")
            }))
            
        }
    }
}

struct PresentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PresentScreen()
    }
}
