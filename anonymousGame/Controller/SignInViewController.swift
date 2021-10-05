//
//  SignInViewController.swift
//  anonymousGame
//
//  Created by Thaddeus Lorenz on 10/2/21.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    // user tapped sign in 
    
    @IBAction func tappedGo(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toPromptViewController", sender: nil)
        
    }
        
    

}
