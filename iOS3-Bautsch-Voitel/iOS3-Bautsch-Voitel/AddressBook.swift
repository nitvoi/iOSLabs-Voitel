//
//  AddressBook.swift
//  iOS3-Bautsch-Voitel
//
//  Created by  on 04.11.20.
//  Copyright © 2020 voitel. All rights reserved.
//

import Foundation

class AddressBook: Codable{
    var addressCards: [AddressCard] = []
    
    func add(card:AddressCard){
        self.addressCards.append(card)
    }
    
    func remove(card:AddressCard){
        if let i = self.addressCards.firstIndex(of: card){
            for card in addressCards{
                card.remove(friend: addressCards[i])
            }
            self.addressCards.remove(at: i)
        }
    }
    
    
}
