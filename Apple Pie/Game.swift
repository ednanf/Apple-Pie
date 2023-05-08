//
//  Game.swift
//  Apple Pie
//
//  Created by Ednan R. Frizzera Filho on 08/05/23.
//

import Foundation

// Holds the state of the game.
struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
      guessedLetters.append(letter)
      if !word.contains(letter) {
        incorrectMovesRemaining -= 1
      }
    }
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) { // If the letter is in guessedLetters:
                guessedWord += "\(letter)"       // Add the letter to guessedWord.
            } else {                             // Otherwise,
                guessedWord += "_"               // add _ to the guessed word
            }
        }
        return guessedWord
    }
    
    
    
    
}
