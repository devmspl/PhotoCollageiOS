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
    @IBOutlet weak var Collage3View: UIView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuoteView.layer.cornerRadius = 50
        secondimageView.layer.cornerRadius = 100
    }
    

   
    @IBAction func BAckbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func downloadBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TestVC") as! TestVC
        vc.imf = UIImage.init(view: Collage3View)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func firstimageBtn(_ sender: Any) {
        
    }
    @IBAction func secondimageBtn(_ sender: Any) {
        
    }
    
}


