import UIKit

class IntroVc: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var intialBG: UIView!
    @IBOutlet weak var initialLabel: UILabel!
    @IBOutlet weak var intialImage: UIImageView!
    
    @IBOutlet weak var interMediateLabel: UILabel!
    @IBOutlet weak var interMediateImage: UIImageView!
    
    @IBOutlet weak var lblBut: UILabel!
    
    @IBOutlet weak var finalBG: UIView!
    @IBOutlet weak var finalLabel: UILabel!
    @IBOutlet weak var finalImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initially hide all elements
        initialLabel.isHidden = true
        intialImage.isHidden = true
        interMediateLabel.isHidden = true
        interMediateImage.isHidden = true
        lblBut.isHidden = true
        finalLabel.isHidden = true
        finalImage.isHidden = true
        
        // Start the animation sequence
        startAnimationSequence {
            self.coordinator?.setCustomTabBarAsRoot()
        }
    }
    
    func startAnimationSequence(completion: @escaping () -> Void) {
        // Step 1: Show initial label and image with typewriter animation
        showLabelWithTypewriterAnimation(label: initialLabel, text: initialLabel.text ?? "") {
            UIView.animate(withDuration: 1.0, animations: {
                self.intialImage.isHidden = false
            }) { _ in
                self.hideInitialViewsAndShowIntermediate(completion: completion)
            }
        }
    }
    
    func hideInitialViewsAndShowIntermediate(completion: @escaping () -> Void) {
        // Hide initial views
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.initialLabel.alpha = 0.0
            self.intialImage.alpha = 0.0
        }) { _ in
            // Show intermediate label and image with typewriter animation
            self.interMediateLabel.alpha = 1.0
            self.showLabelWithTypewriterAnimation(label: self.interMediateLabel, text: self.interMediateLabel.text ?? "") {
                UIView.animate(withDuration: 1.0, animations: {
                    self.interMediateImage.isHidden = false
                }) { _ in
                    self.hideIntermediateViewsAndShowButton(completion: completion)
                }
            }
        }
    }
    
    func hideIntermediateViewsAndShowButton(completion: @escaping () -> Void) {
        // Hide intermediate views
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [], animations: {
            self.interMediateLabel.alpha = 0.0
            self.interMediateImage.alpha = 0.0
        }) { _ in
            self.lblBut.isHidden = false
            self.showLabelWithTypewriterAnimation(label: self.lblBut, text: self.lblBut.text ?? "") {
                self.showFinalViews(completion: completion)
            }
        }
    }
    
    func showFinalViews(completion: @escaping () -> Void) {
        // Show final label and image
        UIView.animate(withDuration: 1.0, animations: {
            self.lblBut.isHidden = true
        }) {
            _ in
            self.finalLabel.isHidden = false
            self.showLabelWithTypewriterAnimation(label: self.finalLabel, text: self.finalLabel.text ?? "") {
                completion()
            }
            self.finalImage.isHidden = false
        }
    }
    
    // Typewriter Animation Function
    func showLabelWithTypewriterAnimation(label: UILabel, text: String, completion: (() -> Void)? = nil) {
        label.text = ""  // Clear label initially
        label.isHidden = false
        
        let words = text.split(separator: " ") // Split text into words
        var wordIndex = 0
        
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
            if wordIndex < words.count {
                label.text! += (wordIndex == 0 ? "" : " ") + words[wordIndex]
                wordIndex += 1
            } else {
                timer.invalidate() // Stop the timer
                completion?() // Call completion handler
            }
        }
    }
}
