//
//  AccountVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 13/09/22.
//

import UIKit

class AccountVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var MainCollectionView: UICollectionView!

    @IBOutlet weak var myPage: UIPageControl!
    var Accountimages = [UIImage(named: "FRT"),UIImage(named: "instagram-3"),UIImage(named: "Calendar-1")]
//    var Accountimages:[String] = ["FRT","instagram-3","Calendar-1"]
//    var currentPage:Int=0

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
        let cell = MainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! accountCell
        cell.cellImages.image = Accountimages[indexPath.row]
        return cell
    }

    @IBAction func ConnectBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CreatorBottomSheetVC") as! CreatorBottomSheetVC;
        self.present(vc, animated: true)
    }
}


class accountCell: UICollectionViewCell{
   
    @IBOutlet weak var cellImages: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    
}
