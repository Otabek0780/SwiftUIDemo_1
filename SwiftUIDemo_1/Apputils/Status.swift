//
//  Status.swift
//  SwiftUIDemo_1
//
//  Created by kim jong moon on 14/02/2021.
//

import Foundation
import Combine

class Status: ObservableObject {
    
    var didChange = PassthroughSubject<Status, Never>()
    @Published var userid: String? {didSet{self.didChange.send(self)}}
    
    func notice() {
         
        if let userid = UserDefaults.standard.string(forKey: "userid") {
            self.userid = userid
        }else {
            self.userid = nil
        }
        
    }
    
}
