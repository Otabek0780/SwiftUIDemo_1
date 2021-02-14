//
//  StarterScreen.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 13/02/2021.
//

import SwiftUI

struct StarterScreen: View {
    
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    
    var body: some View {
        
        VStack {
            if self.status {
                HomeScreen()
            }else {
                SignIn_Screen()
            }
        }
        .onAppear{
            let name = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: name, object: nil, queue: .main) { (_) in
                print("Call NotificationCenter")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            
        }
        
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
