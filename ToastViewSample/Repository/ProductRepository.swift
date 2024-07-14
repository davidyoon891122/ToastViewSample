//
//  ProductRepository.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import Foundation
import Combine

protocol ProductRepositoryProtocol {
    
    func requestProducts() -> AnyPublisher<ProductsModel, Error>

}

final class ProductRepository {

    private let service: ProductServiceProtocol

    init(service: ProductServiceProtocol) {
        self.service = service
    }

}

extension ProductRepository: ProductRepositoryProtocol {

    func requestProducts() -> AnyPublisher<ProductsModel, Error> {
        self.service.requestProductsWithError()
            .map(convertToModel)
            .eraseToAnyPublisher()
    }

}

private extension ProductRepository {

    func convertToModel(data: ProductsEntity) -> ProductsModel {
        let products = data.products.map {
            ProductModel(productId: $0.productId, title: $0.title, description: $0.description, price: $0.price)
        }

        return .init(products: products)
    }

}
