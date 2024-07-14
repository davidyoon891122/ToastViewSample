//
//  ViewModel.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import Foundation
import Combine

struct ViewModel {

    struct Inputs {
        let didTapButton: AnyPublisher<Void, Never>
    }

    struct Outputs {
        let events: AnyPublisher<Void, Never>
    }

    private let repository: ProductRepository

    init(repository: ProductRepository) {
        self.repository = repository
    }

}

extension ViewModel {

    func bind(_ inputs: Inputs) -> Outputs {

        let errorTracker = ErrorTracker()

        let events = Publishers.MergeMany(
            inputs.didTapButton
                .flatMap {
                    self.repository.requestProducts()
                        .trackError(errorTracker)
                }
                .mapToVoid()
        )
            .eraseToAnyPublisher()


        return .init(events: events)
    }

}
