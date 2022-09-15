//
//  PublishVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 30/08/22.
//

import UIKit

class PublishVC: UIViewController,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
          self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    
    @IBAction func PublishBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "BottomSheetVC") as! BottomSheetVC
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func backBtnTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Trialbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        self.present(vc, animated: true)
    }
    
}
