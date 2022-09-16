//
//  Project1VC.swift
//  PhotoCollageiOS
//
//  Created by MacBook M1 on 14/09/22.
//

import UIKit

class Project1VC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    
    @IBOutlet weak var projectCollection:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func trialBtnTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        self.present(vc, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = projectCollection.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! projectCollectionCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: projectCollection.frame.width/2.0, height: projectCollection.frame.height/2.2)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.alert(message: "Functionality not developed yet")
    }
    
    @IBAction func optionBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SideNavigationVC") as! SideNavigationVC
        self.present(vc, animated: true)
    }
    
}

class projectCollectionCell:UICollectionViewCell{
    @IBOutlet weak var cellImage:UIImageView!
}
