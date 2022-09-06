//
//  PaymentVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 29/08/22.
//

import UIKit

class PaymentVC: UIViewController,UIGestureRecognizerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
          self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
       
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
                return true
            }
    
    @IBAction func Crossbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
  

}
