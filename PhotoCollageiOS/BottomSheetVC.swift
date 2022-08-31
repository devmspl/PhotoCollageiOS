//
//  BottomSheetVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 29/08/22.
//

import UIKit

class BottomSheetVC: UIViewController{
    @IBOutlet weak var BottomSheetTableView: UITableView!
    @IBOutlet weak var BottomSheetView: UIView!
    
    let profileOptionImages = [UIImage(named: "Plus"),UIImage(named: "Gradiant"),UIImage(named: "Calendar"),UIImage(named: "Options"),UIImage(named: "Camera"),]
    let profileOptionArray = ["Create Story","Create Post","Add to Feed Planner","Create Link in Bio Site","Capture"]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.BottomSheetView.layer.cornerRadius = 25
        BottomSheetView.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row){
        case 4:
            let picker = UIImagePickerController()
            picker.sourceType = .camera
            picker.delegate = self
            present(picker, animated: true)
        default:
            print("hello")
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


