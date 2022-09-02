//
//  EditPhotoAndVideoVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 02/09/22.
//

import UIKit

class EditPhotoAndVideoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func OptionsBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PublishVC") as! PublishVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
