//
//  CreateBioVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 15/09/22.
//

import UIKit

class CreateBioVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var MainCollectionView: UICollectionView!
    @IBOutlet weak var myPage: UIPageControl!
    
    var Accountimages = [UIImage(named: "instagram-3"),UIImage(named: "CollagePics"),UIImage(named: "HomeImages")]
    var Biolabel = ["Create a beautiful link in Bio Site","Customize to match your style","Grow your audience"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPage.currentPage = 0
        myPage.numberOfPages = Accountimages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        myPage.currentPage = indexPath.row
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Accountimages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! biositeCell
        cell.cellImage.image = Accountimages[indexPath.row]
        cell.cellLab.text = Biolabel[indexPath.row]
        return cell
    }
    
    @IBAction func CreateBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func trialBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        self.present(vc, animated: true)
    }
    @IBAction func optionBtn(_ sender: Any) {
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "SideNavigationVC") as! SideNavigationVC
        self.present(vc2, animated: true)
    }
    
}

class biositeCell: UICollectionViewCell{
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLab: UILabel!
    
}
