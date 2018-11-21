//
//  DepositsPageViewController.swift
//  Twine
//
//  Created by Victor on 11/15/18.
//  Copyright © 2018 Vixtah. All rights reserved.
//

import UIKit

class DepositsPageViewController: UIPageViewController {
    var editTableViewController = DepositsEditTableViewController()
    var activityTableViewController = UIViewController()
    
    init() {
        activityTableViewController.view.backgroundColor = UIColor.groupTableViewBackground
        
        super.init(transitionStyle: .scroll,
                   navigationOrientation: .horizontal,
                   options: nil)
        
        
        setViewControllers([editTableViewController],
                           direction: .forward,
                           animated: true,
                           completion: nil)
        
        dataSource = self
        delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startEditPage() {
        setViewControllers([editTableViewController],
                           direction: .reverse,
                           animated: true,
                           completion: nil)
    }
    
    func startActivityPage() {
        setViewControllers([activityTableViewController],
                           direction: .forward,
                           animated: true,
                           completion: nil)
    }
}

extension DepositsPageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if viewController == activityTableViewController {
            return editTableViewController
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if viewController == editTableViewController {
            return activityTableViewController
        }
        return nil
    }
}
