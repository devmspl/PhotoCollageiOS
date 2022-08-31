//
//  PaymentVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 29/08/22.
//

import UIKit

class PaymentVC: UIViewController {
    @IBOutlet weak var YearlyView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        YearlyView.layer.cornerRadius = 10
        YearlyView.layer.borderWidth = 2
        YearlyView.layer.borderColor = UIColor.black.cgColor

    }
    

  

}
