

import Foundation
import UIKit


enum TabBarItems: CaseIterable{
    case Home, Settings
    
    var appStoryboard: AppStoryboard{
        switch self {
        case .Home:
            return .Home
        case .Settings:
            return .Settings
        }
    }
    
    var vc: UIViewController {
        switch self {
        case .Home:
            let vc = HomeVc.instantiate(from: .Home)
            return vc
        case .Settings:
            let vc = SettingsVc.instantiate(from: .Settings)
            return vc
        }
    }
    
    var title: String {
        switch self {
        case .Home:
            return "Home"
        case .Settings:
            return "Settings"
        }
    }
    
    var icon:UIImage{
        switch self {
        case .Home:
            return .homeTab
        case .Settings:
            return .settingTab
        }
    }
    
    var selectedIndex: Int {
        switch self {
        case .Home:
            return 0
        case .Settings:
            return 1
        }
    }
}
