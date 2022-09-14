//
//  TabbarVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 09/09/22.
//

import UIKit

class TabbarVC: UITabBarController {

    var btn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.items![2].isEnabled = false
             
             setupMiddleButton()
    }
    
    func setupMiddleButton() {
    
           let middleBtn = UIButton(frame: CGRect(x: (self.view.bounds.width / 2)-25, y: -10, width: 50, height: 50))
              btn = middleBtn
           
          btn.setImage(UIImage(named: "ADD80"), for: .normal)
          btn.layer.cornerRadius = 25
          
              //add to the tabbar and add click event
          
              self.tabBar.addSubview(middleBtn)
         
          btn.addTarget(self, action: #selector(self.menuButtonAction), for: .touchUpInside)

          self.view.layoutIfNeeded()
          
          }

          // Menu Button Touch Action
          @objc func menuButtonAction(sender: UIButton) {
//              self.selectedIndex = 0
              let vc = storyboard?.instantiateViewController(withIdentifier: "BottomSheetVC") as! BottomSheetVC
//              let vc = story.instantiateViewController(withIdentifier: "FavoutiteVC") as!
              self.present(vc, animated: true)
                
          }
}
