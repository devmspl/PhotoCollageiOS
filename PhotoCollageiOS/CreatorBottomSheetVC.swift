//
//  CreatorBottomSheetVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 13/09/22.
//

import UIKit

class CreatorBottomSheetVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func businessInsta(_ sender: Any) {
        let url = "https://www.instagram.com/"
              UIApplication.shared.open(URL(string: url)!)
    }
    
    @IBAction func instaLogin(_ sender: Any) {
        let url = "https://www.instagram.com/"
              UIApplication.shared.open(URL(string: url)!)
    }
    @IBAction func DismissBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
