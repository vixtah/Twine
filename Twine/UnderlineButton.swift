//
//  UnderlineButton.swift
//  Twine
//
//  Created by Victor on 11/15/18.
//  Copyright © 2018 Vixtah. All rights reserved.
//

import UIKit

class UnderlineButton: UIButton {
    let bottomBorder = UIView()
    init() {
        super.init(frame: .zero)
        bottomBorder.backgroundColor = .black
        bottomBorder.isHidden = true
        addSubview(bottomBorder)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomBorder.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            bottomBorder.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            bottomBorder.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            bottomBorder.heightAnchor.constraint(equalToConstant: 2.0)
            ])
    }
}


