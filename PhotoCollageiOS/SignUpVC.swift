//
//  SignUpVC.swift
//  PhotoCollageiOS
//
//  Created by MacBook M1 on 14/09/22.
//

import UIKit

class SignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}

extension UIViewController {
    func alert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    // showAlertWithOneAction
    func showAlertWithOneAction(alertTitle:String, message: String, action1Title:String, completion1: ((UIAlertAction) -> Void)? = nil){
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: action1Title, style: .default, handler: completion1))
        self.present(alert, animated: true, completion: nil)
    }
    
    //showAlertWithTwoActions
    func showAlertWithTwoActions(alertTitle:String, message: String, action1Title:String, action1Style: UIAlertAction.Style ,action2Title: String ,completion1: ((UIAlertAction) -> Void)? = nil,completion2 :((UIAlertAction) -> Void)? = nil){
        
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: action1Title, style: action1Style, handler: completion1))
        alert.addAction(UIAlertAction(title: action2Title, style: .default, handler: completion2))
        self.present(alert, animated: true, completion: nil)
    }
}
