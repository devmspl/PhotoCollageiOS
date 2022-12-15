//
//  ExpandVC.swift
//  PhotoCollageiOS
//
//  Created by abc on 04/10/22.
//

import UIKit

class ExpandVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sections = [
            Section(title: "How do I manage my subscription?", options: ["Go to the store"].compactMap({ return "a. \($0)" })),
            Section(title: "How do I restore my purchase", options: [1,2,3].compactMap({ return "b. \($0)" })),
            Section(title: "How do I access my purchase between iOS and Android?", options: [1,2,3].compactMap({ return "c. \($0)" })),
            Section(title: "Can I share stories across multiple devices?", options: [1,2,3].compactMap({ return "d. \($0)" })),
            Section(title: "Can I request a refund?", options: [1,2,3].compactMap({ return "e. \($0)" })),

        ]

        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.frame = view.bounds
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = sections[section]
        
        if section.isOpened{
            return section.options.count + 1
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "cell",
            for: indexPath)
        if indexPath.row == 0{
            cell.textLabel?.text = sections[indexPath.section].title
        }else{
            cell.textLabel?.text = sections[indexPath.section].options[indexPath.row - 1]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
        tableView.reloadSections([indexPath.section], with: .none)
    }
    
}
