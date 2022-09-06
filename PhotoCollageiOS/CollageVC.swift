//
//  CollageVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 05/09/22.
//

import UIKit

class CollageVC: UIViewController {
    @IBOutlet weak var Text: UILabel!
    @IBOutlet weak var Funtext: UILabel!
    @IBOutlet weak var Arttext: UILabel!
    @IBOutlet weak var firstImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Text.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
        Funtext.transform = CGAffineTransform(rotationAngle: -CGFloat.pi/2)
        Arttext.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
    }
    
    @IBAction func SaveBtn(_ sender: Any) {

    }
    @IBAction func Backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}


