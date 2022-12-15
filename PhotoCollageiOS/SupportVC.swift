//
//  SupportVC.swift
//  PhotoCollageiOS
//
//  Created by abc on 22/09/22.
//

import UIKit

class SupportVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var MainTableView: UITableView!
    var optionsArray = ["How do I manage my subscription?","How do I restore my purchase","How do I access my purchase between iOS and Android?","How can I recover my stories?","Can I share stories across multiple devices?","Can I request a refund?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MainTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! supportCell
        cell.optionsCell.text = optionsArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true)
    }
}

class supportCell: UITableViewCell{
    @IBOutlet weak var optionsCell: UILabel!
    
}
