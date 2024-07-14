//
//  ErrorTracker.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import UIKit
import Combine

final class ErrorTracker {

    func trackError<P: Publisher>(_ publisher: P) -> AnyPublisher<P.Output, Never> {
        publisher
            .catch { error in
                if let rootViewController = UIApplication.keyWindow?.rootViewController {
                    rootViewController.showToast(toast: .init(message: "Hello, Toast", font: .boldSystemFont(ofSize: 20), duration: 5, textColor: .white))
                }

                return Empty<P.Output, Never>()
            }
            .eraseToAnyPublisher()
    }

}
