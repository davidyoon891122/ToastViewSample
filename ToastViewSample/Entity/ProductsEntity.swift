//
//  ProductsEntity.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import Foundation

struct ProductsEntity: Codable {

    let products: [ProductEntity]

}

extension ProductsEntity {

    static let fake: Self = .init(products: [
        .init(productId: "0001", title: "Force 1", price: 170000, description: "에어맥스 플러스로 엣지있는 감각을 뽐내세요. 통기성 좋은 메쉬, 놀라운 쿠셔닝과 자연에서 영감을 받은 디자인 디테일로 완성되어 편안한 착화감과 도전적인 스타일을 모두 제공합니다. 이 프리미엄 버전은 천연 가죽과 인조 가죽을 혼합하여 고급스러운 룩을 연출합니다."),
        .init(productId: "0002", title: "Force 1", price: 170000, description: "에어맥스 플러스로 엣지있는 감각을 뽐내세요. 통기성 좋은 메쉬, 놀라운 쿠셔닝과 자연에서 영감을 받은 디자인 디테일로 완성되어 편안한 착화감과 도전적인 스타일을 모두 제공합니다. 이 프리미엄 버전은 천연 가죽과 인조 가죽을 혼합하여 고급스러운 룩을 연출합니다."),
        .init(productId: "0003", title: "Force 1", price: 170000, description: "에어맥스 플러스로 엣지있는 감각을 뽐내세요. 통기성 좋은 메쉬, 놀라운 쿠셔닝과 자연에서 영감을 받은 디자인 디테일로 완성되어 편안한 착화감과 도전적인 스타일을 모두 제공합니다. 이 프리미엄 버전은 천연 가죽과 인조 가죽을 혼합하여 고급스러운 룩을 연출합니다."),
        .init(productId: "0004", title: "Force 1", price: 170000, description: "에어맥스 플러스로 엣지있는 감각을 뽐내세요. 통기성 좋은 메쉬, 놀라운 쿠셔닝과 자연에서 영감을 받은 디자인 디테일로 완성되어 편안한 착화감과 도전적인 스타일을 모두 제공합니다. 이 프리미엄 버전은 천연 가죽과 인조 가죽을 혼합하여 고급스러운 룩을 연출합니다."),
        .init(productId: "0005", title: "Force 1", price: 170000, description: "에어맥스 플러스로 엣지있는 감각을 뽐내세요. 통기성 좋은 메쉬, 놀라운 쿠셔닝과 자연에서 영감을 받은 디자인 디테일로 완성되어 편안한 착화감과 도전적인 스타일을 모두 제공합니다. 이 프리미엄 버전은 천연 가죽과 인조 가죽을 혼합하여 고급스러운 룩을 연출합니다.")
    ])

}


struct ProductEntity: Codable {

    let productId: String
    let title: String
    let price: Int
    let description: String

}
