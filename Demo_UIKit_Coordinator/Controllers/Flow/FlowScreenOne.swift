
import UIKit

class FlowScreenOne: UIViewController, Storyboarded {
    
    weak var coordinator: ModalCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func flowAction(_ sender: UIButton) {
        coordinator?.navigateToFlowScreentwo()
    }

}
