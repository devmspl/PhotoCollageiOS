//
//  CollageVC4.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 06/09/22.
//

import UIKit

class CollageVC4: UIViewController {
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var fourthImage: UIImageView!
    @IBOutlet weak var fifthImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImage.layer.cornerRadius = 75
        secondImage.layer.cornerRadius = 75
        thirdImage.layer.cornerRadius = 75
        fourthImage.layer.cornerRadius = 75
        fifthImage.layer.cornerRadius = 75

    }
    @IBAction func Backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
