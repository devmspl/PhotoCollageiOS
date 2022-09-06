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
        let vc = storyboard?.instantiateViewController(withIdentifier: "StoriesVC") as! StoriesVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    

}
