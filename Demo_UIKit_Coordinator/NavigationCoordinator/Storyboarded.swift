//
//  Storyboarded.swift
//  Demo_UIKit_Coordinator
//
//  Created by bitcot on 08/12/24.
//

import Foundation
import UIKit

enum AppStoryboard: String {
    case Onboarding
    case Home
    case Settings
    case Flow

    var storyboard: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
}

protocol Storyboarded {
    static func instantiate(from storyboard: AppStoryboard) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(from storyboard: AppStoryboard) -> Self {
        let storyboard = storyboard.storyboard
        let identifier = String(describing: self) // ViewController's class name
        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? Self else {
            fatalError("Unable to instantiate \(Self.self) from storyboard \(storyboard)")
        }
        return viewController
    }
}

