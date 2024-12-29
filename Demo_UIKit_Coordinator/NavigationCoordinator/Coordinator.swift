
import Foundation
import UIKit


protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    func start()
}

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // Starts the flow by showing the initial ViewController
    func start() {
        let welcomeViewController = WelcomeVc.instantiate(from: .Onboarding)
        welcomeViewController.coordinator = self
        navigationController.pushViewController(welcomeViewController, animated: false)
    }
    
    // MARK: - Set Custom Tab Bar as Root
    
    func setWelcomeRoot() {
        let vc = WelcomeVc.instantiate(from: .Onboarding)
        vc.coordinator = self
        setNewRootViewController(vc)
    }
    
    /// Set the CustomTabBarController as the root view controller
    func setCustomTabBarAsRoot() {
        let tabBarController = TabBarController()
        tabBarController.coordinator = self
        setNewRootViewController(tabBarController)
    }
    
    // MARK: - Presentation Methods
    
    /// Present a ViewController modally
    func presentWelcomeVc(animated: Bool = true, style: UIModalPresentationStyle = .automatic, completion: (() -> Void)? = nil) {
        let vc = FlowScreenOne.instantiate(from: .Flow)
        vc.modalPresentationStyle = style
        navigationController.present(vc, animated: animated, completion: completion)
    }
    
    func presentWelcomeVcAsChildCoordinator(animated: Bool = true, style: UIModalPresentationStyle, completion: (() -> Void)? = nil) {
        let modalNavigationController = UINavigationController()
        let modalCoordinator = ModalCoordinator(navigationController: modalNavigationController, parentCoordinator: self)
        childCoordinators.append(modalCoordinator)
        modalCoordinator.start()
        navigationController.present(modalNavigationController, animated: animated, completion: completion)
    }
    
    /// Dismiss the currently presented ViewController
    func dismissPresentedViewController(animated: Bool = true, completion: (() -> Void)? = nil) {
        navigationController.presentedViewController?.dismiss(animated: animated, completion: completion)
    }
    
    // MARK: - Navigation Methods
    
    // Navigate to Second Screen
    func navigateToIntroVc() {
        let vc = IntroVc.instantiate(from: .Onboarding)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func navigateToHomeDetailVc(_ bikes: [Bike]) {
        let vc = HomeDetailVc.instantiate(from: .Home)
        vc.coordinator = self
        vc.bikes = bikes
        navigationController.pushViewController(vc, animated: true)
    }
    
    // Pop to Previous Screen
    func popToPreviousScreen() {
        navigationController.popViewController(animated: true)
    }
    
    // MARK: - Root Methods
    
    /// Set a new root view controller for the navigation stack
    func setNewRootViewController(_ viewController: UIViewController, animated: Bool = true) {
        navigationController.setViewControllers([viewController], animated: animated)
    }
    
    /// Pop back to the root view controller
    func popToRootViewController(animated: Bool = true) {
        navigationController.popToRootViewController(animated: animated)
    }
}



