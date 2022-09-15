//
//  PostVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 05/09/22.
//

import UIKit

class PostVC: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()       
    }
    
    @IBAction func StoriesBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func trialTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        self.present(vc, animated: true)
    }
    
    @IBAction func sideMenu(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SideNavigationVC") as! SideNavigationVC
        self.present(vc, animated: true)
    }
   
}
