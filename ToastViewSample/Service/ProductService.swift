//
//  ProductService.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import Combine

protocol ProductServiceProtocol {
    
    func requestProducts() -> AnyPublisher<ProductsEntity, Error>
    func requestProductsWithError() -> AnyPublisher<ProductsEntity, Error>

}


final class ProductService {

}

extension ProductService: ProductServiceProtocol {

    func requestProducts() -> AnyPublisher<ProductsEntity, Error> {
        Future<ProductsEntity, Error> { promise in
            promise(.success(.fake))
        }
        .eraseToAnyPublisher()
    }

    func requestProductsWithError() -> AnyPublisher<ProductsEntity, Error> {
        Future<ProductsEntity, Error> { promise in
            promise(.failure(NetworkError.invalidRequest))
        }
        .eraseToAnyPublisher()
    }

}


enum NetworkError: Error {
    case invalidRequest
}
