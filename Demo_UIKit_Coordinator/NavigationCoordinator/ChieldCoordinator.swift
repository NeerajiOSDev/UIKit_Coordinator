
import Foundation
import UIKit


class ModalCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    var parentCoordinator: Coordinator? // Optional reference to the parent coordinator
    
    init(navigationController: UINavigationController, parentCoordinator: Coordinator) {
        self.navigationController = navigationController
        self.parentCoordinator = parentCoordinator
    }
    
    func start() {
        let welcomeVc = FlowScreenOne.instantiate(from: .Flow)
        welcomeVc.coordinator = self
        navigationController.pushViewController(welcomeVc, animated: false)
    }
    
    func navigateToFlowScreentwo() {
        let introVc = FlowScreentwo.instantiate(from: .Flow)
        introVc.coordinator = self
        navigationController.pushViewController(introVc, animated: true)
    }
    
    func navigateToFlowScreenThree() {
        let introVc = FlowScreenThree.instantiate(from: .Flow)
        introVc.coordinator = self
        navigationController.pushViewController(introVc, animated: true)
    }
    
    func dismiss() {
        parentCoordinator?.childCoordinators.removeAll { $0 === self }
        navigationController.dismiss(animated: true)
    }
}
