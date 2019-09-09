//
//  CustomNavigationControllerViewController.swift
//  lesson8
//
//  Created by пользователь on 08/09/2019.
//  Copyright © 2019 Alex Larin. All rights reserved.
//

import UIKit

class CustomNavigationControllerViewController: UINavigationController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if operation == .push {
        return CustomPushAnimator()
    } else if operation == .pop {
        return CustomPushAnimator()
    }
        return nil

 }
    
}
