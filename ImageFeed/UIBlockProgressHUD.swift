//
//  UIBlockProgressHUD.swift
//  ImageFeed
//
//  Created by Bakhadir on 17.01.2024.
//

import Foundation
import ProgressHUD
import UIKit

final class UIBlockingProgressHUD {
    private static var window: UIWindow? {
        return UIApplication.shared.windows.first
    }
    
    static func show() {
        window?.isUserInteractionEnabled = false
        ProgressHUD.show()
    }
    
    static func dismiss() {
        window?.isUserInteractionEnabled = true
        ProgressHUD.dismiss()
    }
}
