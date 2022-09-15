//
//  SideNavigationVC.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 31/08/22.
//

import UIKit

class SideNavigationVC: UIViewController {
    @IBOutlet weak var SideNavigationMainView: UITableView!
    
    let sideoptions = ["Login", "Support", "Leave Rating", "Terms of service", "Privacy Policy", "Licenses"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func crossBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension SideNavigationVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sideoptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = SideNavigationMainView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NavigationCell
        cell.SideList.text = sideoptions[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.alert(message: "Functionality not developed yet")
    }
    
}

class NavigationCell: UITableViewCell{
    @IBOutlet weak var SideList: UILabel!
    
}
