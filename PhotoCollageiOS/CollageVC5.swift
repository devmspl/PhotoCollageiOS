//
//  CollageVC5.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 06/09/22.
//

import UIKit

class CollageVC5: UIViewController {
    @IBOutlet weak var Footballtext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Footballtext.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)

    }
    @IBAction func Backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
