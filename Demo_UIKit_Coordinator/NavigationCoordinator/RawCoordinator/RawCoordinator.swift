

import Foundation
/*

class MainCoordinator: Coordinator, WelcomeVcDelegate {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let welcomeViewController = WelcomeVc()
        welcomeViewController.delegate = self // Set coordinator as delegate
        navigationController.pushViewController(welcomeViewController, animated: false)
    }

    // MARK: - WelcomeVcDelegate Method
    func didTapNext() {
        navigateToIntroVc()
    }
    
    // Navigation to the next screen
    func navigateToIntroVc() {
        let introViewController = IntroVc()
        navigationController.pushViewController(introViewController, animated: true)
    }
}



protocol WelcomeVcDelegate: AnyObject {
    func didTapNext()
}

import UIKit

class WelcomeVc: UIViewController {
    
    // Weak reference to avoid retain cycles
    weak var delegate: WelcomeVcDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Next", for: .normal)
        nextButton.addTarget(self, action: #selector(nextTapped), for: .touchUpInside)
        view.addSubview(nextButton)
        nextButton.center = view.center
    }

    @objc private func nextTapped() {
        // Notify the delegate
        delegate?.didTapNext()
    }
}
*/
