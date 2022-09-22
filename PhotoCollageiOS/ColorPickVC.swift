//
//  ColorPickVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 01/09/22.
//

import UIKit

class ColorPickVC: UIViewController, UIColorPickerViewControllerDelegate, UIGestureRecognizerDelegate{
    @IBOutlet weak var ImageView: UIView!
    
    @IBOutlet weak var photo1: UIImageView!
    @IBOutlet weak var photo2: UIImageView!
    @IBOutlet weak var photo3: UIImageView!
    
    var selectedImage = ""
    
    let colorpicker = UIColorPickerViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        colorpicker.delegate = self
        colorpicker.supportsAlpha = false
        colorpicker.selectedColor = ImageView.backgroundColor ?? .black
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true

    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    
    @IBAction func ColorTapped(_ sender: Any) {
       
        present(colorpicker, animated: true)
    }
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController){
        let color = viewController.selectedColor
        ImageView.backgroundColor = color
    }
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
        ImageView.backgroundColor = color
    }
    @IBAction func Trialbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "EditPhotoAndVideoVC") as! EditPhotoAndVideoVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func backTapped(_sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func storiesBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Story_PostVC") as! Story_PostVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func photo1Btn(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        selectedImage = SelectedImage.Image1.rawValue
        present(vc, animated: true)
    }
    
    @IBAction func photo2Btn(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        selectedImage = SelectedImage.Image2.rawValue
        present(vc, animated: true)
    }
    
    @IBAction func photo3Btn(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        selectedImage = SelectedImage.Image3.rawValue
        present(vc, animated: true)
    }
    @IBAction func nextBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TestVC") as! TestVC
        vc.imf = UIImage.init(view: ImageView)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ColorPickVC:UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue:"UIImagePickerControllerEditedImage")]as? UIImage{
            let selctedImage = SelectedImage(rawValue: self.selectedImage)
            switch selctedImage {
            case .Image1:
                photo1.image = image
            case .Image2:
                photo2.image = image
            case .Image3:
                photo3.image = image
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

