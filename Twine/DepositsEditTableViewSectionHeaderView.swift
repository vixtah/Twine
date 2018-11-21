//
//  DepositsEditTableViewSectionHeaderView.swift
//  Twine
//
//  Created by Victor on 11/15/18.
//  Copyright © 2018 Vixtah. All rights reserved.
//

import UIKit


class DepositsEditTableViewSectionHeaderView: UIView {
    let mainLabel = UILabel()
    let descriptionLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainLabel)
        addSubview(descriptionLabel)
        
        mainLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        descriptionLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        descriptionLabel.textAlignment = .right
        self.backgroundColor = UIColor.groupTableViewBackground
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        let padding: CGFloat = 20
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: padding),
            mainLabel.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.4),
            mainLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            
            descriptionLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -padding),
            descriptionLabel.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.4),
            descriptionLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
            ])
    }
}
