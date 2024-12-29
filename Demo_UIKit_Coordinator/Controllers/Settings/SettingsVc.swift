//
//  SettingsVc.swift
//  Demo_UIKit_Coordinator
//
//  Created by bitcot on 08/12/24.
//

import UIKit

class SettingsVc: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logoutAction(_ sender: UIButton) {
        coordinator?.setWelcomeRoot()
    }

}
