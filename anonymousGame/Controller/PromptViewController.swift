//
//  ViewController.swift
//  anonymousGame
//
//  Created by Thaddeus Lorenz on 10/2/21.
//

import UIKit

class PromptViewController: UIViewController {
    

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var promptLabel: UILabel!
    
    let promptList = ["Best pick up line", "Worst one liner", "Scariest one liner"]
        
    var prompt = [Prompt]()
    
    var userResponse: String = ""

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        updatePrompt()
    }
    
    func updatePrompt() {
        
        promptLabel.text = promptList.randomElement()
        
    }
    
    // This function is called before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // Get a reference to the second view controller
        let resultsViewController = segue.destination as! ResultsViewController

        // Set variable in the second view controller with the String to pass
        resultsViewController.receivedString = textField.text!
    }


    @IBAction func tappedSubmit(_ sender: UIButton) {
        performSegue(withIdentifier: "toResults", sender: nil)

    }
 
    

}

