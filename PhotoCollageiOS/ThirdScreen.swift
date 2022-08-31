//
//  ThirdScreen.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 20/08/22.
//

import UIKit

class ThirdScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func NextTap(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
