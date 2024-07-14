//
//  SceneDelegate.swift
//  ToastViewSample
//
//  Created by Jiwon Yoon on 7/13/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        let viewModel = ViewModel(repository: ProductRepository(service: ProductService()))
        window?.rootViewController = ViewController(viewModel: viewModel)

        window?.makeKeyAndVisible()
    }




}

