
import UIKit

class FlowScreenThree: UIViewController, Storyboarded {
    
    weak var coordinator: ModalCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func flowAction(_ sender: UIButton) {
        coordinator?.dismiss()
    }
}
