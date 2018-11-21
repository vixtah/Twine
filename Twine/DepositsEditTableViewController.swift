//
//  DepositsEditTableViewController.swift
//  Twine
//
//  Created by Victor on 11/15/18.
//  Copyright © 2018 Vixtah. All rights reserved.
//

import UIKit

class DepositsEditTableViewController: UITableViewController {
    
    let data = ["Rainy Ian",
                "Goal Name",
                "Trip to Hawaii",
                "Kids",
                "Vacation",
                "Vacation"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(DepositsEditTableViewCell.self,
                           forCellReuseIdentifier: DepositsViewController.reuseId)
        tableView.rowHeight = 80
        view.backgroundColor = UIColor.groupTableViewBackground
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = DepositsEditTableViewSectionHeaderView()
        headerView.mainLabel.text = "Monthly Deposits"
        headerView.descriptionLabel.text = "$200.00"
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DepositsViewController.reuseId) as? DepositsEditTableViewCell else {
            return UITableViewCell() }
        cell.mainLabel.text = data[indexPath.row]
        cell.statusLabel.text = "Paused"
        cell.activateButton.setTitle("Activate", for: .normal)
        cell.activateButton.setTitleColor(UIColor.systemBlueColor(), for: .normal)
        
        return cell
    }

}
