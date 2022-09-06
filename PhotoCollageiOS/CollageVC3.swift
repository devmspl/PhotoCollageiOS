//
//  CollageVC3.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 05/09/22.
//

import UIKit

class CollageVC3: UIViewController {
    @IBOutlet weak var QuoteView: UIView!
    @IBOutlet weak var secondimageView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuoteView.layer.cornerRadius = 90
        secondimageView.layer.cornerRadius = 100
        imageView.layer.cornerRadius = 90    }
    

   
    @IBAction func BAckbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}


