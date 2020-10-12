//
//  bruteforce.swift
//  PasswordCracker
//
//  Created by Thomas Nyuma on 10/11/20.
//  Copyright © 2020 Thomas Nyuma. All rights reserved.
//

import Foundation

func generatePassword(_ passwordLength: Int) -> String {
   
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

func prompt()  {
    
print("How many tries would you like at the server?")
    if let input = readLine(){
        if let tries = Int(input){
    for _ in 0...tries{
        crackPassword()
        continue
            }
        }
    }

}


func crackPassword() {
    
            print("Password Correct. Now please enter your name.")
            let name = readLine()

            print(">>Welcome, \(name ?? "")...")
            
            print(">>How many passwords would you like to inject?")
            
            let num = Int(readLine(strippingNewline: true)!)
            let eachpass = (0..<num!)
            
            print("How long would you like the password length to be?")
            let passLength = Int(readLine(strippingNewline: true)!)
            
            for _ in eachpass {
                print("\(generatePassword(passwordLength: Int.random(in:0..<passLength!))) Successfully Sent.")
                }
            
            print(">> \(num ?? 0) Password Tries Sent")
            
            }

    
func thomasAuthentication(code:Int) {
    var numOfTries = 3
    print("Welcome. Please enter the passcode to further use this password cracker. ")
    
        for _ in 0..<numOfTries {
            numOfTries -= 1
            let guess = Int(readLine(strippingNewline: true)!)
            
                        if guess != code {
                            print("Incorrect")
                            while numOfTries < 2{
                                print("One more try remains until you're locked out.")
                                break
                                
                            }
                            
                        } else {
                            crackPassword()
                            
                        }
                
            
            }
    }


