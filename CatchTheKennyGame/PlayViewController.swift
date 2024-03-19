//
//  PlayViewController.swift
//  CatchTheKennyGame
//
//  Created by Furkan İSLAM on 19.03.2024.
//

import UIKit

class PlayViewController: UIViewController {
    
    var nickname = ""


    @IBOutlet weak var nicknameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func playClicked(_ sender: Any) {
        
        nickname = nicknameTextField.text!
        performSegue(withIdentifier: "playVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playVC" {
            let destinationVC = segue.destination as! ViewController
            destinationVC.nickname = nickname
        }
    }
    
}
