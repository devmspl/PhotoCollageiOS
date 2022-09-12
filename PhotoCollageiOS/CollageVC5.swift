//
//  CollageVC5.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 06/09/22.
//

import UIKit

class CollageVC5: UIViewController {
    @IBOutlet weak var Footballtext: UILabel!
    @IBOutlet weak var Collage5View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Footballtext.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)

    }
    @IBAction func Backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func downloadBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TestVC") as! TestVC
        vc.imf = UIImage.init(view: Collage5View)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
