//
//  DepositsViewController.swift
//  Twine
//
//  Created by Victor on 11/15/18.
//  Copyright © 2018 Vixtah. All rights reserved.
//

import UIKit

class DepositsViewController: UIViewController {

    static let reuseId = "DepositsTableViewCellReuseId"
    static let title = "Recurring \nDeposits"
    let pageViewController: DepositsPageViewController
    let depositsView: DepositsView
    
    init(pageViewController: DepositsPageViewController) {
        self.pageViewController = pageViewController
        
        depositsView = DepositsView(pageView: pageViewController.view)
        
        super.init(nibName: nil, bundle: nil)
        
        depositsView.editTabButton.addTarget(self, action: #selector(didTapEditButton), for: .touchUpInside)
        depositsView.activityTabButton.addTarget(self, action: #selector(didTapActiveButton), for: .touchUpInside)
        
        didTapEditButton()
    }
    
    override func viewDidLoad() {
        view = depositsView
        view.backgroundColor = .white
        super.viewDidLoad()
        navBarSetup()
    }
    
    func navBarSetup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationItem.largeTitleDisplayMode = .automatic
        
        let backgroundColor = UIColor.colorWithHexString(hexString: "AFC2DC", alpha: 1)
        navigationController?.navigationBar.barTintColor = backgroundColor
        navigationController?.navigationBar.isTranslucent = false
        
        self.title = DepositsViewController.title
        self.navigationController?.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.black,
            NSAttributedString.Key.font : UIFont.preferredFont(forTextStyle: .largeTitle)
        ]
        
        for navItem in self.navigationController!.navigationBar.subviews {
            for itemSubView in navItem.subviews {
                if let largeLabel = itemSubView as? UILabel {
                    largeLabel.text = self.title
                    largeLabel.numberOfLines = 0
                    largeLabel.lineBreakMode = .byWordWrapping
                }
            }
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapEditButton() {
        depositsView.editTabButton.bottomBorder.isHidden = false
        depositsView.activityTabButton.bottomBorder.isHidden = true
        pageViewController.startEditPage()
    }
    
    @objc func didTapActiveButton() {
        depositsView.activityTabButton.bottomBorder.isHidden = false
        depositsView.editTabButton.bottomBorder.isHidden = true
        pageViewController.startActivityPage()
    }
}

extension DepositsViewController: UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            didFinishAnimating finished: Bool,
                            previousViewControllers: [UIViewController],
                            transitionCompleted completed: Bool) {
        
        if let completedViewController = pageViewController.viewControllers?.first,
            completedViewController == self.pageViewController.editTableViewController {
            
            depositsView.editTabButton.bottomBorder.isHidden = false
            depositsView.activityTabButton.bottomBorder.isHidden = true
        } else {
            depositsView.activityTabButton.bottomBorder.isHidden = false
            depositsView.editTabButton.bottomBorder.isHidden = true
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            willTransitionTo pendingViewControllers: [UIViewController]) {
        if let pendingViewController = pendingViewControllers.first,
            pendingViewController == self.pageViewController.editTableViewController {

            depositsView.editTabButton.bottomBorder.isHidden = false
            depositsView.activityTabButton.bottomBorder.isHidden = true
        } else {
            depositsView.activityTabButton.bottomBorder.isHidden = false
            depositsView.editTabButton.bottomBorder.isHidden = true
        }
    }
}

