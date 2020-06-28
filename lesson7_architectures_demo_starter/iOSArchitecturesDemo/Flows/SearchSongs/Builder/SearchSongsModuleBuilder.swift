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
        let presenter = SearchSongsPresenter()
        let viewController = SearchSongsViewController(presenter: presenter)
        presenter.viewInput = viewController
        return viewController
    }
}
