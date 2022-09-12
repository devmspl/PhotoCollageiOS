//
//  CollageVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 05/09/22.
//

import UIKit

class CollageVC: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var Text: UILabel!
    @IBOutlet weak var Funtext: UILabel!
    @IBOutlet weak var Arttext: UILabel!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var Collage1View: UIView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    
   
    
    var selectedImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Text.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
        Funtext.transform = CGAffineTransform(rotationAngle: -CGFloat.pi/2)
        Arttext.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
    }
    
    @IBAction func SaveBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TestVC") as! TestVC
        vc.imf = UIImage.init(view: Collage1View)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func Backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func Image1Btn(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        selectedImage = SelectedImage.Image1.rawValue
        present(vc, animated: true)
    }
    @IBAction func Image2Btn(_ sender: Any) {
        let vc2 = UIImagePickerController()
        vc2.sourceType = .photoLibrary
        vc2.delegate = self
        vc2.allowsEditing = true
        selectedImage = SelectedImage.Image2.rawValue
        present(vc2, animated: true)
    }
    @IBAction func Image3Btn(_ sender: Any) {
        let vc3 = UIImagePickerController()
        vc3.sourceType = .photoLibrary
        vc3.delegate = self
        vc3.allowsEditing = true
        selectedImage = SelectedImage.Image3.rawValue
        present(vc3, animated: true)
    }
    
}

extension CollageVC{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]as? UIImage{
            let selctedImage = SelectedImage(rawValue: self.selectedImage)
            switch selctedImage{
            case .Image1:
                firstImage.image = image
            case .Image2:
                secondImage.image = image
            case .Image3:
                thirdImage.image = image
            default:
               break
            }
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
