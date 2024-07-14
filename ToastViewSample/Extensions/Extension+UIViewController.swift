//
//  Extension+UIViewController.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import UIKit
import SnapKit

extension UIViewController {

    func showToast(toast: ToastModel) {
        let toastView = ToastView()

        if self.view.subviews.contains(where: { $0 is ToastView }) {
            return
        }

        self.view.addSubview(toastView)

        toastView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16.0)
            $0.trailing.equalToSuperview().offset(-16.0)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).offset(-16.0)
        }

        UIView.animate(withDuration: 5, delay: 0.1, options: .curveEaseInOut, animations: {
            toastView.alpha = 0.0
        }, completion: { _ in
            toastView.removeFromSuperview()
        })

    }

}


struct ToastModel {

    let message: String
    let font: UIFont
    let duration: CGFloat
    let textColor: UIColor

    init(message: String, font: UIFont, duration: CGFloat, textColor: UIColor) {
        self.message = message
        self.font = font
        self.duration = duration
        self.textColor = textColor
    }

}
