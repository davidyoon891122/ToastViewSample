//
//  Extension+Publisher.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import Combine

extension Publisher where Self.Failure == Never {

    func sinkIgnore() -> AnyCancellable {
        sink { _ in }
    }

    func mapToVoid() -> AnyPublisher<Void, Never> {
        map { _ in }.eraseToAnyPublisher()
    }

}

extension Publisher {

    func trackError(_ errorTracker: ErrorTracker) -> AnyPublisher<Self.Output, Never> {
        return errorTracker.trackError(self)
    }

}
