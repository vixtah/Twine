//
//  DepositsTableViewCell.swift
//  Twine
//
//  Created by Victor on 11/15/18.
//  Copyright © 2018 Vixtah. All rights reserved.
//

import UIKit

class DepositsEditTableViewCell: UITableViewCell {

    let mainLabel = UILabel()
    let statusLabel = UILabel()
    let activateButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(mainLabel)
        addSubview(statusLabel)
        addSubview(activateButton)
        
        mainLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        statusLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        statusLabel.textAlignment = .center
        activateButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        activateButton.setTitleColor(.black, for: .normal)
        activateButton.titleLabel?.textAlignment = .right
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let padding: CGFloat = 20
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        activateButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activateButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -padding/2),
            activateButton.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.2),
            activateButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            
            statusLabel.rightAnchor.constraint(equalTo: activateButton.leftAnchor),
            statusLabel.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.2),
            statusLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            
            mainLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: padding),
            mainLabel.rightAnchor.constraint(equalTo: statusLabel.leftAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            
            ])
    }
}
