
import UIKit

class TabBarController: UITabBarController {
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if coordinator == nil {
            print("Warning: Coordinator is nil!")
        }
        
        // Set up the view controllers for the tabs
//        setupTabs()
        
        // Custom appearance or additional setup can go here
//        setupAppearance()
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)

            // Call setupTabs when the coordinator is guaranteed to be set
            if coordinator != nil {
                setupTabs()
                setupAppearance()
            } else {
                // Handle error state or fallback logic
                print("Error: Coordinator is still nil.")
            }
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //        setTabBarHeight(90)
        //        setupProperties()
    }
    
    private func setupTabs() {
        // Create the view controllers dynamically based on the TabBarItems enum
        var viewControllersList: [UIViewController] = []
        
        // Loop through all the TabBarItems and set up each corresponding view controller
        for tab in TabBarItems.allCases {
            let viewController = tab.vc
            
            if let homeVc = viewController as? HomeVc {
                homeVc.coordinator = coordinator
            }
            if let settingsVc = viewController as? SettingsVc {
                settingsVc.coordinator = coordinator
            }
            let tabBarItem = UITabBarItem(
                title: tab.title,
                image: tab.icon,
                tag: tab.selectedIndex
            )
            
            // Set custom font size for the tab title
            tabBarItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 16)], for: .normal)
            
            // Adjust image size to be dynamic
            tabBarItem.image = tab.icon.withRenderingMode(.alwaysTemplate).resize(to: CGSize(width: 30, height: 30)) // Dynamic icon size
            
            viewController.tabBarItem = tabBarItem
            viewControllersList.append(viewController)
        }
        
        // Set the view controllers of the tab bar
        self.viewControllers = viewControllersList
    }
    
    private func setTabBarHeight(_ height: CGFloat) {
        var tabBarFrame = tabBar.frame
        tabBarFrame.size.height = height
        tabBarFrame.origin.y = view.frame.size.height - tabBarFrame.size.height
        tabBar.frame = tabBarFrame
    }
    
    private func setupAppearance() {
        // Customize the tab bar's appearance if needed
        tabBar.tintColor = .appTheme // Tab Selection color
        tabBar.unselectedItemTintColor = .white // unselected tab color
        tabBar.layer.backgroundColor = UIColor.black.cgColor // BG color of tab bar
        tabBar.isTranslucent = true // Translutency
    }
    
    //    private func setupProperties() {
    //        tabBar.layer.cornerRadius = 30
    //        var tabBarFrame = tabBar.frame
    //        let leftPadding: CGFloat = 16
    //        let rightPadding: CGFloat = 16
    //        let bottomPadding: CGFloat = 16
    //
    //        // Apply left, right, and bottom padding
    //        tabBarFrame.origin.x = leftPadding  // Left padding
    //        tabBarFrame.origin.y = view.frame.size.height - tabBarFrame.size.height - bottomPadding  // Bottom padding
    //
    //        // Adjust width to account for left and right padding
    //        tabBarFrame.size.width = view.frame.size.width - leftPadding - rightPadding
    //        tabBar.layer.frame = tabBarFrame
    //
    //        tabBar.layer.masksToBounds = false
    //    }
}

extension UIImage {
    func resize(to size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        draw(in: CGRect(origin: .zero, size: size))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return resizedImage ?? self
    }
}
