//
//  WelcomeVc.swift
//  Demo_UIKit_Coordinator
//
//  Created by bitcot on 08/12/24.
//

import UIKit

class WelcomeVc: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
        
    @IBAction func letsStartAction(_sender: UIButton) {
        coordinator?.navigateToIntroVc()
    }

}
