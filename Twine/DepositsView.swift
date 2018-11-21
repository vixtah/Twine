//
//  DepositsView.swift
//  Twine
//
//  Created by Victor on 11/15/18.
//  Copyright © 2018 Vixtah. All rights reserved.
//

import UIKit


class DepositsView: UIView {
    
    let editTabButton = UnderlineButton()
    let activityTabButton = UnderlineButton()
    let pageView: UIView
    
    init(pageView: UIView) {
        self.pageView = pageView
        
        super.init(frame: .zero)
        
        addSubview(editTabButton)
        addSubview(activityTabButton)
        addSubview(pageView)
        
        let backgroundColor = UIColor.colorWithHexString(hexString: "AFC2DC", alpha: 1)
        
        editTabButton.setTitleColor(.black, for: .normal)
        editTabButton.backgroundColor = backgroundColor
        editTabButton.setTitle("EDIT", for: .normal)
        editTabButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        activityTabButton.setTitleColor(.black, for: .normal)
        activityTabButton.backgroundColor = backgroundColor
        activityTabButton.setTitle("ACTIVITY", for: .normal)
        activityTabButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
    }
    
    override func layoutSubviews() {
        let buttonHeight: CGFloat = 44.0
        editTabButton.translatesAutoresizingMaskIntoConstraints = false
        activityTabButton.translatesAutoresizingMaskIntoConstraints = false
        pageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            editTabButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            editTabButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            editTabButton.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.5),
            editTabButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            
            activityTabButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            activityTabButton.leftAnchor.constraint(equalTo: editTabButton.rightAnchor),
            activityTabButton.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.5),
            activityTabButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            
            pageView.topAnchor.constraint(equalTo: editTabButton.bottomAnchor),
            pageView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            pageView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            pageView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
