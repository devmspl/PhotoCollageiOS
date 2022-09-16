//
//  Story&PostVC.swift
//  PhotoCollageiOS
//
//  Created by abc on 16/09/22.
//

import UIKit

class Story_PostVC: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var MainTableView: UITableView!
    @IBOutlet weak var MainColletionView: UICollectionView!
  
    var story = [UIImage(named: "GroupImages"),UIImage(named: "story1"),UIImage(named: "story2"),UIImage(named: "GroupImages"),UIImage(named: "story1"),UIImage(named: "story2"),]
    var storylabel = ["Alone","Love","Wedding","Alone","Love","Wedding"]
    var headercaption = ["For You","Classico Animated 22"]
    var headerphoto = [UIImage(named: "arrow-down"),UIImage(named: "")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        story.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MainColletionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! storyCell
        cell.cellphotos.image = story[indexPath.row]
        cell.celltext.text = storylabel[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return headercaption.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MainTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! storyTableCell
        cell.headerText.text = headercaption[indexPath.row]
        cell.headerImage.image = headerphoto[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    @IBAction func OPTIONBTN(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SideNavigationVC") as! SideNavigationVC
        self.present(vc, animated: true)
    }
    @IBAction func trialBtn(_ sender: Any) {
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        self.present(vc2, animated: true)
    }
    
    @IBAction func postsBtn(_ sender: Any) {
        let vc3 = storyboard?.instantiateViewController(withIdentifier: "ColorPickVC") as! ColorPickVC
        self.navigationController?.pushViewController(vc3, animated: false)
    }
    
}

class storyCell: UICollectionViewCell{
    @IBOutlet weak var cellphotos: UIImageView!
    @IBOutlet weak var celltext: UILabel!
    
}

class storyTableCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var headerText: UILabel!
    @IBOutlet weak var SecondMainCollectionView: UICollectionView!
    override  func awakeFromNib() {
        SecondMainCollectionView.delegate = self
        SecondMainCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = SecondMainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! storyCollectionCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 130, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "CollageVC") as! CollageVC
        parentViewController?.navigationController?.pushViewController(vc, animated: true)
        switch(indexPath.row){
        case 1:
            let vc = story.instantiateViewController(withIdentifier: "CollageVC2") as! CollageVC2
            parentViewController?.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = story.instantiateViewController(withIdentifier: "CollageVC3") as! CollageVC3
            parentViewController?.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = story.instantiateViewController(withIdentifier: "CollageVC4") as! CollageVC4
            parentViewController?.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = story.instantiateViewController(withIdentifier: "CollageVC5") as! CollageVC5
            parentViewController?.navigationController?.pushViewController(vc, animated: true)
        default:
            print("Hello")
        }
        }
}

class storyCollectionCell: UICollectionViewCell{
    
    @IBOutlet weak var secondCellPhotos: UIImageView!
}


extension UIView {
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}
