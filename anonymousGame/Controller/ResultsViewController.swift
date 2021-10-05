//
//  ResultsViewController.swift
//  anonymousGame
//
//  Created by Thaddeus Lorenz on 10/4/21.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    var randomAnswersArray = ["Your mom", "Did you fall from heaven? I could tell.", "Woke up after 30 years."]
    
    //value from UITextField in previous view controller ("PromptViewController")
    var receivedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = receivedString
        
    
    
        

    }


    
    @IBAction func indexChanged(_ sender: Any) {
        
        
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
           
                textLabel.text = receivedString
            
            
        case 1:
                textLabel.text = randomAnswersArray.randomElement()
            
        default:
            break
        }
        

    }
    



    

}
