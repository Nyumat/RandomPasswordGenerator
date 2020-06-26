//
//  main.swift
//
// Random Password Generation Tool
//
//  Created by Thomas Nyuma on 6/26/20.
//  Copyright © 2020 Thomas Nyuma. All rights reserved.
//

import Foundation

func generatePassword(passwordLength: Int) -> String {
    
    let randomPassword : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ123456789"
    let randomPasswordLength = UInt32(randomPassword.length)
    
        var returnValue = ""
    
    for _ in 0 ..< passwordLength {
        let randomPosition = arc4random_uniform(randomPasswordLength)
        var character = randomPassword.character(at: Int(randomPosition))
        returnValue += NSString(characters: &character, length: 1) as String
        }
    return returnValue
}

let myPassword = generatePassword(passwordLength: 10)

print("Ur randomly generated password is : \(myPassword)")
