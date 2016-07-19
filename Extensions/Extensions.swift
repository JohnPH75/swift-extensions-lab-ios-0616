//
//  Extensions.swift
//  Extensions
//
//  Created by John Hussain on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//    Create an extension function for the String class called whisper()

extension String {
    
    //    Returns a String in lowerscase to create a whispering effect
    
    func whisper() -> String {
        
        return lowercaseString
    }
    
    //    Create a String extension function for the String class called shout()
    //    Returns a String in upperscase to create a shouting effect
    
    func shout() -> String {
        
        return uppercaseString
    }
    
    //    Create a String extension computed property for the String class called pigLatin
    //    Takes the first letter of a word and moves it to the end
    //    Adds the letters "ay" to the end of the word
    //    Should be able to handle sentances
    //    If it's a single letter, it should return the character
    
    func pigLatin() -> String {
        
        if (self.characters.count == 1) {
            return self
        }
        
        var pigLatin : String = ""
        var split = self.lowercaseString.componentsSeparatedByString(" ")
        
        for (index, _) in split.enumerate() {
            
            var word = split[index]
            let first = (word as NSString).substringToIndex(1)
            word = (word as NSString).substringFromIndex(1)
            word.appendContentsOf(first)
            word.appendContentsOf("ay")
            
            if split[index] != split.last{
                word = word.stringByAppendingString(" ")
            }
            
           
            word = word.capitalizedString
            
            
            pigLatin.appendContentsOf(word)
        }
        
        return pigLatin
    }
    
    //    Create an Int extension computed property for the String class called points
    //    Should calculate the amount of points a given string has
    //    1 point for consonants and 2 points for vowels
    //    Ignores spaces and numbers, returns zero for empty strings
    
    var points: Int {
        
        let vowels: [Character] = ["a", "e", "i", "o", "u"]
        
        let consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        
        var vowelCount = 0
        var consonantCount = 0
        
        for letter in self.lowercaseString.characters {
            
            if (vowels.contains(letter)) {
                
                vowelCount += 2
            } else if (consonants.contains(letter)) {
                
                consonantCount += 1
            }
        }
        
        return vowelCount + consonantCount
    }
    
    //    Create a computed extension property on String called unicornLevel
    //    Calculates one unicorn for each character in the recipient String
    //    Use this unicorn emoji 🦄 directly in your code
    
    var unicornLevel : String {
        
        var unicornString = ""
        
        let removeSpace = self.stringByReplacingOccurrencesOfString(" ", withString: "")
        
        for _ in removeSpace.characters {
            
            unicornString.appendContentsOf("🦄")
        }
        
        
        return unicornString
    }
    
}

//Create an extension function for the Int class called half()
//Halves itself

extension Int {
    
    func half() -> Int {
        
        return self / 2
    }
    
    //    Create an extension function for the Int class called isDivisibleBy()
    //    To find out if the recipient Int is divisible by the argument
    //    Takes in an Int argument
    //    Returns a bool
    
    func isDivisibleBy(number : Int) -> Bool {
        
        if self % number == 0 {
            
            return true
        }
        
        return false
    }
    
    //    Create an extension computed property for the Int class called squared
    //    Squares itself
    
    var squared : Int {
        
        return self * self
    }
    
    
    //    Create an extension computed property for the Int class called halved
    //    Halves itself by calling a function
    
    var halved : Int {
        
        return half()
    }
    
}