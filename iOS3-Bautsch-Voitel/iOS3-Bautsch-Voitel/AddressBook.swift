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
        self.sort()
    }
    
    func remove(card:AddressCard){
        if let i = self.addressCards.firstIndex(of: card){
            for card in addressCards{
                card.remove(friend: addressCards[i])
            }
            self.addressCards.remove(at: i)
        }
    }

    func sort(){
        self.addressCards.sort(by: { $0.lastName < $1.lastName } )
    }

    func save(toFile path: String){
        let encoder= PropertyListEncoder()
        if let data = try? encoder.encode(self) {
            try? data.write(to: path)
        }
    }

    class func addressBook(fromFile path: String) -> AddressBook?{
        if let data = try? Data(contentsOf: path) {
            let decoder = PropertyListDecoder()
            if let book= try? decoder.decode(AddressBook.self, from: data) {
                return book
            }
        }
    }

}
