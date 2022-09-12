//
//  TestVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 07/09/22.
//

import UIKit

class TestVC: UIViewController {
    @IBOutlet weak var imageMainVIEW: UIView!
    @IBOutlet weak var imageVIEW: UIImageView!
    
    var MainImageView = UIView()
    var imf = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        imageVIEW.image = imf

    }
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true
        )
    }
    
    @IBAction func downloadBtn(_ sender: Any) {
            let alert3 = UIAlertController(title: "Photo Collage", message: "Download Successfully", preferredStyle: .alert)
            let ok3 = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert3.addAction(ok3)
            self.present(alert3, animated: true, completion: nil)
        UIImageWriteToSavedPhotosAlbum(self.imageVIEW.image!, nil, nil, nil)
    }
        
    }


