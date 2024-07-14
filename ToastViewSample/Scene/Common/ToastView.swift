//
//  ToastView.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import UIKit
import SnapKit

final class ToastView: UIView {

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello, Toast"
        label.textColor = .white

        return label
    }()

    private lazy var containView: UIView = {
        let view = UIView()
        view.backgroundColor = .black.withAlphaComponent(0.8)
        view.layer.cornerRadius = 24

        [
            self.titleLabel
        ]
            .forEach {
                view.addSubview($0)
            }

        self.titleLabel.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(16.0)
        }

        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

private extension ToastView {

    func setupViews() {
        self.addSubview(self.containView)

        self.containView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

}

@available(iOS 17.0, *)
#Preview {
    ToastView()
}
