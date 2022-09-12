//
//  CollageVC2.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 05/09/22.
//

import UIKit

enum SelectedImage: String{
    case Image1
    case Image2
    case Image3
}

class CollageVC2: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    
    @IBOutlet weak var MainCollageView: UIView!
    
    var selectedImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    @IBAction func BAckbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func image1Btn(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        selectedImage = SelectedImage.Image1.rawValue
        present(vc, animated: true)
    }
    
    @IBAction func image2Btn(_ sender: Any) {
        let vc2 = UIImagePickerController()
        vc2.sourceType = .photoLibrary
        vc2.delegate = self
        vc2.allowsEditing = true
        selectedImage = SelectedImage.Image2.rawValue
        present(vc2, animated: true)
    }
    
    @IBAction func image3Btn(_ sender: Any) {
        let vc3 = UIImagePickerController()
        vc3.sourceType = .photoLibrary
        vc3.delegate = self
        vc3.allowsEditing = true
        selectedImage = SelectedImage.Image3.rawValue
        present(vc3, animated: true)
    }
    
    @IBAction func downloadBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TestVC") as! TestVC
        vc.imf = UIImage.init(view: MainCollageView)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


extension CollageVC2{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]as? UIImage{
            let selctedImage = SelectedImage(rawValue: self.selectedImage)
            switch selctedImage{
            case .Image1:
                image1.image = image
            case .Image2:
                image2.image = image
            case .Image3:
                image3.image = image
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

extension UIImage{
    convenience init(view: UIView) {

    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.isOpaque, 0.0)
        view.drawHierarchy(in: view.bounds, afterScreenUpdates: false)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
        self.init(cgImage: (image?.cgImage)!)

  }
}

