//
//  Converter.swift
//  romanConverter
//
//  Created by Merve Kavaklioglu on 06/09/2019.
//  Copyright © 2019 Merve Kavaklioglu. All rights reserved.
//

/*    I    1        I  I,II,III,IV, V , VI , VII, VIII, IV
      V    5        V
      X    10       X
      L    50       L
      C    100      C
      D    500      D
      M    1,000    M       */

import UIKit

class Converter: NSObject {
    
    let oneSymbols: [(stair: Int, symbol: String)] =
        [(4, "M"),
         (3, "C"),
         (2, "X"),
         (1, "I")]
    let fiveSymbols: [(stair: Int, symbol: String)] =
        [(4, "M"),
         (3, "D"),
         (2, "L"),
         (1, "V")]

    func numberToRomanConversion(_ number:String) -> String {
        
       // let number : String = "724" //DCCXXIV
        var result = ""
        
        //split characters and indexes and decide.
        
        var reversIndex = 0
        for digit in number
        {
            let stair = number.count - reversIndex
            result.append(theCharacters(stairs: stair, character: digit))
            reversIndex += 1
        }
        return result
    }
    func appendVLD(stairs:Int) -> String {
        var result = ""
        for item in fiveSymbols {
            if(item.stair == stairs){
                result.append(item.symbol)
                break;
            }
        }
        return result
    }
    func appendIXC(stairs:Int) -> String {
        var result = ""
        //result.append(oneSymbols[stairs-1].symbol) //TODO: better performance
        for item in oneSymbols {
            if(item.stair == stairs){
                result.append(item.symbol)
                break;
            }
        }
        return result
    }
    
    func theCharacters(stairs:Int, character:Character) -> String {
        var result = ""
        if (character.toInt == 0){
            result.append("")
        }
        else if(Int(String(character))! <= 3){
            for _ in 1...Int(String(character))!{
                result.append(appendIXC(stairs: stairs))
            }
        }
        else if(character.toInt <= 4){
            result.append(appendIXC(stairs: stairs))
            result.append(appendVLD(stairs: stairs))
        }
        else if(character.toInt <= 8){
            result.append(appendVLD(stairs: stairs))
            
            let repetition = Int(String(character))!-5
            if(repetition>0){
                for _ in 1...repetition{
                    result.append(appendIXC(stairs: stairs))
                }
            }
        }
        else if(character.toInt == 9){
            result.append(appendIXC(stairs: stairs))
            result.append(appendIXC(stairs: stairs+1))
        }
        return result
    }
}

extension Character {
    var toInt: Int {
        get {
            return Int(String(self))!
        }
    }
}
