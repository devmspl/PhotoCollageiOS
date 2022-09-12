//
//  ProfileVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 20/08/22.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func NextTapbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TabbarVC") as! TabbarVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
  

}
