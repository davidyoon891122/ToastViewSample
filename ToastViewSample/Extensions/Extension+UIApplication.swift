//
//  Extension+UIApplication.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import UIKit

extension UIApplication {

    static var keyWindow: UIWindow? = {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            return window
        }
        return nil
    }()

}
