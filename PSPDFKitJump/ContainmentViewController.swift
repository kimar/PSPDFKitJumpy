//
//  ContainmentViewController.swift
//  PSPDFKitJump
//
//  Created by Marcus Kida on 22/03/2016.
//  Copyright © 2016 Atlassian. All rights reserved.
//

import UIKit

class ContainmentViewController: UINavigationController {
    
    let containerViewController = UIViewController()
    
    func containing(viewController: UIViewController) -> UINavigationController {
        
        let navigationController = UINavigationController(rootViewController: containerViewController)
        navigationController.navigationBar.barStyle = .Black
        navigationController.navigationBar.barTintColor = UIColor(red: 41.0/255, green: 108.0/255, blue: 177.0/255, alpha: 1.0)
        navigationController.navigationBar.tintColor = UIColor.whiteColor()
        
        // change to `true` for non-jumpyness
        navigationController.navigationBar.translucent = false
        //
        
        viewController.willMoveToParentViewController(parentViewController)
        containerViewController.addChildViewController(viewController)
        containerViewController.view.addSubview(viewController.view)
        viewController.didMoveToParentViewController(parentViewController)
        viewController.view.frame = containerViewController.view.bounds
        
        return navigationController
    }

}
