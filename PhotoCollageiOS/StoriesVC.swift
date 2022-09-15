//
//  StoriesVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 26/08/22.
//

import UIKit

class StoriesVC: UIViewController,UIGestureRecognizerDelegate {
    @IBOutlet weak var MainCollectionView: UICollectionView!
    @IBOutlet weak var SecondMainCollectionView: UICollectionView!
    @IBOutlet weak var ThirdMainCollectionView: UICollectionView!
    
    var story = [UIImage(named: "GroupImages"),UIImage(named: "story1"),UIImage(named: "story2"),UIImage(named: "GroupImages"),UIImage(named: "story1"),UIImage(named: "story2"),]
    var storylabel = ["Alone","Love","Wedding","Alone","Love","Wedding"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    
    @IBAction func OptionBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SideNavigationVC") as! SideNavigationVC
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func PostBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PostVC") as! PostVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func trialBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        self.present(vc, animated: true)
    }
    
}
extension StoriesVC: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == MainCollectionView){
            return story.count
        }else if (collectionView == ThirdMainCollectionView){
            return 10
        }else{
        return 10
    }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if (collectionView == MainCollectionView){
            let cell2 = MainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! abc
            cell2.CollectionImages.image = story[indexPath.row]
            cell2.collectionLabel.text = storylabel[indexPath.row]
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
//            let vc = storyboard?.instantiateViewController(withIdentifier: "StoriesVC") as! StoriesVC
//            self.navigationController?.pushViewController(vc, animated: true)
        }
        if (collectionView == SecondMainCollectionView){
        switch(indexPath.row){
        case 0:
            let vc = storyboard?.instantiateViewController(withIdentifier: "CollageVC") as! CollageVC
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = storyboard?.instantiateViewController(withIdentifier: "CollageVC2") as! CollageVC2
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = storyboard?.instantiateViewController(withIdentifier: "CollageVC3") as! CollageVC3
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = storyboard?.instantiateViewController(withIdentifier: "CollageVC4") as! CollageVC4
            self.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = storyboard?.instantiateViewController(withIdentifier: "CollageVC5") as! CollageVC5
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            print("hello")
        }
        }
    }
    }

class abc: UICollectionViewCell{
    @IBOutlet weak var CollectionImages: UIImageView!
    @IBOutlet weak var collectionLabel: UILabel!
    
}

class xyz: UICollectionViewCell{
    @IBOutlet weak var StoryImageOutlet: UIImageView!
    
}

class Classico: UICollectionViewCell{
    @IBOutlet weak var StoryImageOutlet2: UIImageView!
    
}
    
