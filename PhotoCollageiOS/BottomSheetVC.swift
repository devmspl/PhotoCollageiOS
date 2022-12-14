//
//  BottomSheetVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 29/08/22.
//

import UIKit
import imglyKit

class BottomSheetVC: UIViewController{
    @IBOutlet weak var BottomSheetTableView: UITableView!
    @IBOutlet weak var BottomSheetView: UIView!
    
    let profileOptionImages = [UIImage(named: "Plus"),UIImage(named: "Gradiant"),UIImage(named: "Calendar"),UIImage(named: "Options"),UIImage(named: "Camera"),]
    let profileOptionArray = ["Create Story","Create Post","Add to Feed Planner","Create Link in Bio Site","Capture"]
    
    let cameraViewController = IMGLYCameraViewController(recordingModes: [.photo, .video])
    override func viewDidLoad() {
        super.viewDidLoad()

        self.BottomSheetView.layer.cornerRadius = 25
        BottomSheetView.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
    }
    @IBAction func DismissTAp(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
extension BottomSheetVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileOptionImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = BottomSheetTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BottomCell
        cell.TableOptions.text = profileOptionArray[indexPath.row]
        cell.TableImages.image = profileOptionImages[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 70
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch(indexPath.row){
//        case 4:
//            if(UIImagePickerController.isSourceTypeAvailable(.camera))
//            {
//                     let myPickerController = UIImagePickerController()
//                     myPickerController.delegate = self
//                     myPickerController.allowsEditing = true
//                     myPickerController.sourceType = .camera
//                     self.present(myPickerController, animated: true, completion: nil)
//            }
//            else
//            {
//                     let actionController: UIAlertController = UIAlertController(title: "Camera is not available",message: "", preferredStyle: .alert)
//                     let cancelAction: UIAlertAction = UIAlertAction(title: "OK", style: .cancel) { action -> Void  in
//                     }
//                     actionController.addAction(cancelAction)
//                     self.present(actionController, animated: true, completion: nil)
//            }
//        default:
//            print("hello")
//        }
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row){
        case 4:
            self.present(cameraViewController, animated: true)
        default:
            self.alert(message: "Functionality not developed yet")
//            print("hello")
        }
        
    }

}

extension BottomSheetVC: UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            return
        }
    }
}
class BottomCell: UITableViewCell{
    @IBOutlet weak var TableImages: UIImageView!
    @IBOutlet weak var TableOptions: UILabel!
    
}


