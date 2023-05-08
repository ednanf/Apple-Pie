//
//  ViewController.swift
//  Apple Pie
//
//  Created by Ednan R. Frizzera Filho on 06/05/23.
//

import UIKit

class ViewController: UIViewController {
// MARK: - IBOutlets
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!

    
// MARK: - Properties
    var listOfWords = ["bucaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var currentGame: Game! // Holds the current game's value so it can be updated.
    
// MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newRound()
    
    }
    
    
// MARK: - IBActions
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false // Disables whichever button was pressed.
        let letterString = sender.configuration!.title! // ATTENTION! I did not update letterStirng like page 377 instructed, because it crashes
        let letter = Character(letterString.lowercased()) // Converts the value from the line above to lowercase and change the type from String to Character.
        currentGame.playerGuessed(letter: letter) // Adds the letter contained in the button pressed to the method, in order to reduce the incorrectMovesRemaining.
        updateUI()
    }
    
// MARK: - Functions

    func newRound() {
        let newWord = listOfWords.removeFirst() // Removes **and returns** the first item.
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: []) // Sets the game with the removed word in the line above and sets the number of turns remaning to be the same number defined in the constant.
        updateUI()
    }

    // Handles interface updates
    func updateUI() {
        correctWordLabel.text = currentGame.formattedWord // Sets the text of the label to match the text produced by the current Game struct using the property formattedWord.
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)") // Selects the image called "Tree X" where X is the number of turns remaining.
    }
    
}

