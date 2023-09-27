//
//  File.swift
//  
//
//  Created by Herve Crespel on 27/09/2023.
//

import Foundation

public struct Digivalue {
    public var value: Int
    public var base: Int = 10
    public var power: Int = 1

    public init(_ n:Int,_ b:Int,_ p:Int) {
        value = n
        base = b
        power = p
    }
    public init(_ dv:[Int]) {
        value = dv[0]
        base = dv[2]
        power = dv[3]
    }
    public var double:Double{
        let pow = power < 0 ? -power : power
        var puissance = 1
        for _ in 1...pow {
            puissance *= base
        }
        if power > 0 {
            return Double(value * puissance)
        } else {
            return Double(value) / Double(puissance)
        }
    }
}
