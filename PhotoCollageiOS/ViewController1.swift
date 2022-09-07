//
//  ViewController1.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 05/09/22.
//

import UIKit
import CollageView


class ViewController1: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var UploadImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func Downloadbtn(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(self.UploadImage.image!, nil, nil, nil)
    }
    @IBAction func Uploadbtn(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
}


extension ViewController1{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]as? UIImage{
            UploadImage.image = image
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
