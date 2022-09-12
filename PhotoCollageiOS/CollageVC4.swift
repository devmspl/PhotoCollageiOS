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
    @IBOutlet weak var Collage4View: UIView!
    
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
    @IBAction func downloadBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TestVC") as! TestVC
        vc.imf = UIImage.init(view: Collage4View)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func firstimgBtn(_ sender: Any) {
        
    }
    @IBAction func secondimgBtn(_ sender: Any) {
        
    }
    @IBAction func thirdimgBtn(_ sender: Any) {
        
    }
    @IBAction func fourthimgBtn(_ sender: Any) {
        
    }
    @IBAction func fifthimgBtn(_ sender: Any) {
        
    }
    
}
