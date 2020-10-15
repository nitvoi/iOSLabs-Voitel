//
//  Complex.swift
//  iOS1-Voitel
//
//  Created by  on 07.10.20.
//  Copyright © 2020 voitel. All rights reserved.
//

import Foundation
class Complex {
    var r: Double
    var i:Double
    init(r:Double,i:Double){
        self.r = r
        self.i = i
    }
    public func incrementBy(r:Double) {
        self.r += r
    }
    public func incrementBy(i:Double){
        self.i += i
    }
    public func incrementBy(c:Complex){
        self.r += c.r
        self.i += c.i
    }
    public func multiplyBy(c:Complex){
        let firsts = self.r * c.r
        let outers = self.r * c.i
        let inners = self.i * c.r
        let lasts = self.i * c.i * -1
        self.r = firsts + lasts
        self.i = outers + inners
    }
    public func rotateBy(angle:Double){
        //TODO
        //(cos(p) + sin(p) i)
        multiplyBy(c: Complex(r:cos(angle),i:sin(angle)))
    }
    public func plus(c:Complex)->Complex{
        let comp = Complex(r:self.r,i:self.i)
        comp.incrementBy(c: c)
        return comp
    }
    public func printString(){
        print("\(self.r) \(self.i >= 0 ? "+":"-") \(sqrt(pow(self.i,2))) i")
    }
}
