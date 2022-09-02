//
//  StoriesVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 26/08/22.
//

import UIKit

class StoriesVC: UIViewController {
    @IBOutlet weak var MainCollectionView: UICollectionView!
    @IBOutlet weak var SecondMainCollectionView: UICollectionView!
    @IBOutlet weak var ThirdMainCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func OptionBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SideNavigationVC") as! SideNavigationVC
        self.present(vc, animated: true, completion: nil)
    }
    
}
extension StoriesVC: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == MainCollectionView){
            return 10
        }else if (collectionView == ThirdMainCollectionView){
            return 10
        }else{
        return 10
    }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if (collectionView == MainCollectionView){
            let cell2 = MainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! abc
            return cell2
        }else if (collectionView == ThirdMainCollectionView){
            let cell3 = ThirdMainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Classico
            return cell3
        }else{
        let cell = SecondMainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! xyz
        return cell
    }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            if (collectionView == MainCollectionView){
            let vc = storyboard?.instantiateViewController(withIdentifier: "EditPhotoAndVideoVC") as! EditPhotoAndVideoVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    }

class abc: UICollectionViewCell{
    @IBOutlet weak var CollectionImages: UIImageView!
    
}

class xyz: UICollectionViewCell{
    @IBOutlet weak var StoryImageOutlet: UIImageView!
    
}

class Classico: UICollectionViewCell{
    @IBOutlet weak var StoryImageOutlet2: UIImageView!
    
}
    



