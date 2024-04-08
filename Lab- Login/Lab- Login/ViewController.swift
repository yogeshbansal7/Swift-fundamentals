//
//  ViewController.swift
//  Lab- Login
//
//  Created by Student on 04/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var UsernameField: UITextField!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = UsernameField.text
        }
        
        //segue.destination.title = UsernameField.text
    }

    @IBAction func forgotUsernamePressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
}

