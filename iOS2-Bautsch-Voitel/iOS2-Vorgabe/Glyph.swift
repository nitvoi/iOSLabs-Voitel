//
//  Glyph.swift
//  iOS2-Bautsch-Voitel
//
//  Created by  on 21.10.20.
//  Copyright © 2020 Klaus Jung. All rights reserved.
//

import Foundation
import UIKit

class Glyph: Drawing{
    var size: Double = 0.0
    
    var color: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    var center: Point = Point()
    var showDescription: Bool = false
    
    func paint() {
        <#code#>
    }
    
    var area: Double{
        get{
            return size*size
        }
    }
    
    var circumference: Double{
        get{
            return 0
        }
    }
    init(x:Double, y:Double,size:Double,color:UIColor){
        self.center.x = x
        self.center.y = y
        self.size = size
        self.color = color
    }
    
}
