//
//  EditPhotoAndVideoVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 02/09/22.
//

import UIKit
import imglyKit


class EditPhotoAndVideoVC: UIViewController,UIGestureRecognizerDelegate {

    @IBOutlet weak var imagePicked: UIImageView!
    
//    let cameraViewController = IMGLYCameraViewController(recordingModes: [.photo, .video])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true

    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    @IBAction func OptionsBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PublishVC") as! PublishVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func EditBtn(_ sender: Any) {
//        self.present(cameraViewController, animated: true)
    }
    @IBAction func Trialbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PublishVC") as! PublishVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

