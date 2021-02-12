//
//  TabScreen.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 12/02/2021.
//

import SwiftUI

struct TabScreen: View {
    
    @State var isSheet = false
    @State var showingAlert = false
    
    var actionSheet: ActionSheet {
        let title = "Action"
        let message = "Description"
        return ActionSheet(title: Text(title), message: Text(message),
                           buttons: [
                            .default(Text("Confirm"), action: {
                            //action
                            }),
                            .destructive(Text("Cancel"), action: {
                            //action
                            })
                           ])
    }
    
    var body: some View {
        
        TabView {
//.........................................Alert_Style..........................................
            Button(action: {
                showingAlert = true
            }, label: {
                Text("Show Alert")
            }).alert(isPresented: $showingAlert, content: {
                let title = "Logout"
                let message = "Do you want to leave?"
                return Alert(title: Text(title), message: Text(message),
                             primaryButton: .destructive(Text("Cancel")){
                            //action
                             },
                             secondaryButton: .default(Text("Confirm")){
                            //action
                             }
                             )
            })
            .tabItem {
                Image("ic_comment")
                Text("Alert")
            }
//.........................................Sheet_Action_Style...............................
            Spacer()
            Button(action: {
                isSheet = true
            },
            label: {
                Text("Show Action Sheet")
            }).actionSheet(isPresented: $isSheet, content: {
                self.actionSheet
            })
            .tabItem {
                Image("ic_camera")
                Text("Action Sheet")
            }
            
        }
        //.tabViewStyle(PageTabViewStyle())
        //.indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
