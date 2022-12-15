//
//  CollageVC3.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 05/09/22.
//

import UIKit

class CollageVC3: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet weak var QuoteView: UIView!
    @IBOutlet weak var secondimageView: UIView!
    @IBOutlet weak var Collage3View: UIView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    
    var selectedImage = ""
    
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
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        selectedImage = SelectedImage.Image1.rawValue
        present(vc, animated: true)
    }
    @IBAction func secondimageBtn(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        selectedImage = SelectedImage.Image2.rawValue
        present(vc, animated: true)
    }
    
}

extension CollageVC3{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]as? UIImage{
            let selctedImage = SelectedImage(rawValue: self.selectedImage)
            switch selctedImage{
            case .Image1:
                firstImage.image = image
            case .Image2:
                secondImage.image = image
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
