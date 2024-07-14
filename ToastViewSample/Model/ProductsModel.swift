//
//  ProductsModel.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import Foundation

struct ProductsModel {

    let products: [ProductModel]

}

struct ProductModel {

    let productId: String
    let title: String
    let description: String
    let price: Int

}
