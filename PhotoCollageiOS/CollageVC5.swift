//
//  CollageVC5.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 06/09/22.
//

import UIKit

class CollageVC5: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var Footballtext: UILabel!
    @IBOutlet weak var Collage5View: UIView!
    @IBOutlet weak var firstpicture: UIImageView!
    @IBOutlet weak var secondpicture: UIImageView!
    
    var selectedImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        Footballtext.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)

    }
    @IBAction func Backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func downloadBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TestVC") as! TestVC
        vc.imf = UIImage.init(view: Collage5View)
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
        let vc1 = UIImagePickerController()
        vc1.sourceType = .photoLibrary
        vc1.delegate = self
        vc1.allowsEditing = true
        selectedImage = SelectedImage.Image2.rawValue
        present(vc1, animated: true)
    }
    
}

extension CollageVC5{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]as? UIImage{
            let selctedImage = SelectedImage(rawValue: self.selectedImage)
            switch selctedImage{
            case .Image1:
                firstpicture.image = image
            case .Image2:
                secondpicture.image = image
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
