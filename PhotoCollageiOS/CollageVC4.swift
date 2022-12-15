//
//  CollageVC4.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 06/09/22.
//

import UIKit

class CollageVC4: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var fourthImage: UIImageView!
    @IBOutlet weak var fifthImage: UIImageView!
    @IBOutlet weak var Collage4View: UIView!
    
    var selectedImage = ""
    
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
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        selectedImage = SelectedImage.Image1.rawValue
        present(vc, animated: true)
    }
    @IBAction func secondimgBtn(_ sender: Any) {
        let vc1 = UIImagePickerController()
        vc1.sourceType = .photoLibrary
        vc1.delegate = self
        vc1.allowsEditing = true
        selectedImage = SelectedImage.Image2.rawValue
        present(vc1, animated: true)
    }
    @IBAction func thirdimgBtn(_ sender: Any) {
        let vc2 = UIImagePickerController()
        vc2.sourceType = .photoLibrary
        vc2.delegate = self
        vc2.allowsEditing = true
        selectedImage = SelectedImage.Image3.rawValue
        present(vc2, animated: true)
    }
    @IBAction func fourthimgBtn(_ sender: Any) {
        let vc3 = UIImagePickerController()
        vc3.sourceType = .photoLibrary
        vc3.delegate = self
        vc3.allowsEditing = true
        selectedImage = SelectedImage.Image4.rawValue
        present(vc3, animated: true)
    }
    @IBAction func fifthimgBtn(_ sender: Any) {
        let vc4 = UIImagePickerController()
        vc4.sourceType = .photoLibrary
        vc4.delegate = self
        vc4.allowsEditing = true
        selectedImage = SelectedImage.Image5.rawValue
        present(vc4, animated: true)
        
    }
    
}


extension CollageVC4{
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
            case .Image4:
                fourthImage.image = image
            case .Image5:
                fifthImage.image = image
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
