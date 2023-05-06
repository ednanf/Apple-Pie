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
    
    
// MARK: - Setup
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
// MARK: - IBActions
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
// MARK: - Functions

    

}

