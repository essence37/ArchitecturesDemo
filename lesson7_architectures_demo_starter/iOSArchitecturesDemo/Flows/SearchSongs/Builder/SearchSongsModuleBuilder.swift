//
//  SearchSongsModuleBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by Пазин Даниил on 28.06.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

final class SearchSongsModuleBuilder {
    static func build() -> (UIViewController & SearchSongsViewInput) {
        let router = SearchSongsRouter()
        let interactor = SearchSongsInteractor()
        let presenter = SearchSongsPresenter(interactor: interactor, router: router)
        let viewController = SearchSongsViewController(presenter: presenter)
        presenter.viewInput = viewController
        router.viewController = viewController
        return viewController
    }
}
