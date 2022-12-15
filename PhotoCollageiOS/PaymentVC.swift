//
//  PaymentVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 29/08/22.
//

import UIKit

class PaymentVC: UIViewController,UIGestureRecognizerDelegate,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var PlusCollectionView: UICollectionView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var MainCollectionView: UICollectionView!
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var MainView: UIView!
    @IBOutlet var ProView: UIView!
    
    var proPhotos = [UIImage(named: "Rectangle 53"),UIImage(named: "Rectangle 52"),UIImage(named: "Rectangle 44"),UIImage(named: "Rectangle 8")]
    var proLabel = ["Custom Fonts","All Collection","Custom Fonts","All Collection"]
    
    var plusPhotos = [UIImage(named: "Rectangle 53"),UIImage(named: "Rectangle 52"),UIImage(named: "Rectangle 44"),UIImage(named: "Rectangle 8")]
    var plusLabel = ["Custom Fonts","All Collection","Custom Fonts","All Collection"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProView.removeFromSuperview()
        ProView.frame = MainView.bounds
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
                return true
            }
    @IBAction func segmentChange(_ sender: Any) {
        if segment.selectedSegmentIndex == 0{
            ProView.removeFromSuperview()
        }else{
            MainView.addSubview(ProView)
        }
    }
    
    @IBAction func Crossbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == MainCollectionView){
            return proPhotos.count
        }else{
            return plusPhotos.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! proCell
        cell.proImages.image = proPhotos[indexPath.row]
        cell.proText.text = proLabel[indexPath.row]
        return cell
    }

}

class proCell: UICollectionViewCell{
    @IBOutlet weak var proImages: UIImageView!
    @IBOutlet weak var proText: UILabel!
    
}

class plusCell: UICollectionViewCell{
    @IBOutlet weak var plusImages: UIImageView!
    @IBOutlet weak var plusText: UILabel!
    
}
