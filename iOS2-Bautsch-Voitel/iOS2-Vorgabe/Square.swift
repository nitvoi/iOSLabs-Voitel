//
//  Square.swift
//  iOS2-Bautsch-Voitel
//
//  Created by  on 21.10.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation

class Square:Glyph{
    override var area:Double {
        get{
            return size*size
        }
    }
    
    override var circumference:Double{
        get{
            return size
        }
    }
    
    override func paint(){
        DrawHelper.drawSquare(x: self.center.x, y: self.center.y, size: self.size, color: self.color)
    }
}
