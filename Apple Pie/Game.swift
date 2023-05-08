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
    var incorrectMovesRemaining: Int // Number of turns remaining to guess the word.
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) { // Since this method changes a variable insde the struct, it has to be "mutating."
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
