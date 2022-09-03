//
//  ColorPickVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 01/09/22.
//

import UIKit

class ColorPickVC: UIViewController, UIColorPickerViewControllerDelegate{
    @IBOutlet weak var ImageView: UIView!
    @IBOutlet weak var ImageOutlet: UIImageView!
    let colorpicker = UIColorPickerViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        colorpicker.delegate = self
        colorpicker.supportsAlpha = false
        colorpicker.selectedColor = ImageView.backgroundColor ?? .black

    }
    
    @IBAction func ColorTapped(_ sender: Any) {
       
        present(colorpicker, animated: true)
    }
    
    @IBAction func selectimage(_ sender: Any) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController){
        let color = viewController.selectedColor
        ImageView.backgroundColor = color
    }
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
        ImageView.backgroundColor = color
    }
}

extension ColorPickVC:UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")]as? UIImage{
            ImageOutlet.image = image
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}