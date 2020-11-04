//
//  AddressCard.swift
//  iOS3-Bautsch-Voitel
//
//  Created by  on 04.11.20.
//  Copyright © 2020 voitel. All rights reserved.
//

import Foundation

class AddressCard: Codable, Equatable {
    static func == (lhs: AddressCard, rhs: AddressCard) -> Bool {
        return lhs.firstName.lowercased() + lhs.lastName.lowercased() == rhs.firstName.lowercased() + rhs.lastName.lowercased()
    }
    
    var firstName = String()
    var lastName = String()
    var street = String()
    var postal = Int()
    var state = String()
    var hobbys = [String]()
    var friends = [AddressCard]()
    
    init(first:String,last:String, street:String, postal:Int,state:String){
        self.firstName = first
        self.lastName = last
        self.street = street
        self.postal = postal
        self.state = state
    }

    func add(hobby:String){
        self.hobbys.append(hobby)
    }
    
    func remove(hobby:String){
        if let i = self.hobbys.firstIndex(of: hobby){
            self.hobbys.remove(at: i)
        }
    }
    
    func add(friend:AddressCard){
        if self != friend{
            self.friends.append(friend)
        }
    }
    
    func remove(friend:AddressCard){
        if let i = self.friends.firstIndex(of: friend){
            self.friends.remove(at:i)
        }
    }
    
    
}
