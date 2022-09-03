//
//  EditPhotoAndVideoVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 02/09/22.
//

import UIKit
import imglyKit


class EditPhotoAndVideoVC: UIViewController {

    @IBOutlet weak var imagePicked: UIImageView!
    
//    let cameraViewController = IMGLYCameraViewController(recordingModes: [.photo, .video])
    
    override func viewDidLoad() {
        super.viewDidLoad()
     

    }
    @IBAction func OptionsBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PublishVC") as! PublishVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func EditBtn(_ sender: Any) {
//        self.present(cameraViewController, animated: true)
    }
}

