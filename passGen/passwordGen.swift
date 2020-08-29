// This program does the same thing as the other file, but instead prints the user specified amount of Passwords on each iteration.
// While un-deplyable to a server right now, this project could theoretically be used for a brute-force password cracker under the right hands. 

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

func printPass() {
    print("\(generatePassword(passwordLength: 10)) generated.")
}

print("How many passwords would you like to generate? ")
var numOfPasswords = Int(readLine(strippingNewline: true)!)

var eachpass = (0..<numOfPasswords!)

for _ in eachpass {
    printPass()
}
