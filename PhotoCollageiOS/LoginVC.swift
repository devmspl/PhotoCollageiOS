//
//  LoginVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 13/09/22.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailtext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func createAccountTapped(_ sender: Any) {
        self.alert(message: "Functionality not developed yet")
    }
    @IBAction func loginTapped(_ sender: Any) {
        self.alert(message: "Functionality not developed yet")
    }
    @IBAction func googleLoginTapped(_ sender: Any) {
        let url = "https://accounts.google.com/v3/signin/identifier?dsh=S-1995585663%3A1663159176224530&continue=https%3A%2F%2Faccounts.google.com%2F&followup=https%3A%2F%2Faccounts.google.com%2F&passive=1209600&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AQDHYWo2-hjNIjOl6qD0zmbyo3dDSSwAOhKqXhi-cyt0NW8dHgByL0pAqNJqTWyZqlsBpWW4q8UD"
              UIApplication.shared.open(URL(string: url)!)
    }
    
    @IBAction func facebookLoginTapped(_ sender: Any) {
        let url = "https://www.facebook.com/"
              UIApplication.shared.open(URL(string: url)!)
    }
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
