//
//  Extension+Cancellables.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import Combine

typealias Cancellables = Set<AnyCancellable>

extension Cancellables {
  mutating func cancel() {
    forEach { $0.cancel() }
    removeAll()
  }
}
