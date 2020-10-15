//
//  main.swift
//  iOS1-Voitel
//
//  Created by  on 07.10.20.
//  Copyright © 2020 voitel. All rights reserved.
//

import Foundation

// 1.
print("Bitte geben Sie den Realteil für eine Komplexe Zahl ein!")
var re = readDouble()

print("Bitte geben Sie den Imaginärteil für eine Komplexe Zahl ein!")
var im = readDouble()

var c = Complex(r:re,i:im)
c.printString()

//2.
c.incrementBy(c:Complex(r:1.2, i:2.4))
c.printString()

//3.
c.incrementBy(r:2.2)
c.printString()

//4
c.incrementBy(i:0.6)
c.printString()

//5.
c.multiplyBy(c:Complex(r:0.5, i:1.0))
c.printString()

//6.
c.rotateBy(angle:Double.pi)
c.printString()

//7.
var c2 = c.plus(c:Complex(r:0.2, i: 0.9))
c2.printString()


func readDouble()-> Double{
    let input = readLine()
    if let _input = input {
        let double = Double(_input)
        if let _double = double{
            return _double
        }else{
            return 0.0
        }
    }else{
        return 0.0
    }
}
