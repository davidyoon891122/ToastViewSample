//
//  ViewController.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import UIKit
import Combine
import SnapKit
import CombineCocoa

final class ViewController: UIViewController {

    private let viewModel: ViewModel

    private var cancellables = Cancellables()

    private lazy var actionButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Action", for: .normal)
        button.setTitleColor(.label, for: .normal)

        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.cornerRadius = 4

        return button
    }()


    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViews()
        self.bindViewModel()
    }

}

private extension ViewController {

    func setupViews() {
        self.view.backgroundColor = .systemBackground
        [
            self.actionButton
        ]
            .forEach {
                self.view.addSubview($0)
            }

        self.actionButton.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalTo(100)
            $0.height.equalTo(50)
        }
    }

    func bindViewModel() {
        let outputs = self.viewModel.bind(.init(didTapButton: self.actionButton.tapPublisher.eraseToAnyPublisher()))

        [
            outputs.events
                .sinkIgnore()
        ]
            .forEach {
                self.cancellables.insert($0)
            }

        
    }

}


@available(iOS 17, *)
#Preview {
    ViewController(viewModel: ViewModel(repository: ProductRepository(service: ProductService())))
}

