//
//  StoriesVC2.swift
//  PhotoCollageiOS
//
//  Created by abc on 17/09/22.
//

import UIKit

class StoriesVC2: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var MainCollectionView: UICollectionView!
    
    var story = [UIImage(named: "GroupPhotos"),UIImage(named: "story1"),UIImage(named: "story2"),UIImage(named: "GroupImages"),UIImage(named: "story1"),UIImage(named: "story2"),]
    var storylabel = ["Alone","Love","Wedding","Alone","Love","Wedding"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return story.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MainCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! storiesCell
        cell.storiesPhoto.image = story[indexPath.row]
        cell.storiesLabel.text = storylabel[indexPath.row]
        return cell
    }

}

class storiesCell: UICollectionViewCell{
    @IBOutlet weak var storiesPhoto: UIImageView!
    @IBOutlet weak var storiesLabel: UILabel!
    
}
