//
//  PublishVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 30/08/22.
//

import UIKit

class PublishVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func PublishBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "BottomSheetVC") as! BottomSheetVC
        self.present(vc, animated: true, completion: nil)
    }
    
}
