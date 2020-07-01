//
//  SearchSongsViewInterface.swift
//  iOSArchitecturesDemo
//
//  Created by Пазин Даниил on 28.06.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import Foundation

protocol SearchSongsViewInput: class {
    
    var searchResults: [ITunesSong] { get set }
    
    func showError(error: Error)
    
    func showNoResults()
    
    func hideNoResults()
    
    func throbber(show: Bool)
}

protocol SearchSongsViewOutput: class {
    
    func viewDidSearch(with query: String)
    
    func viewDidSelectSong(_ song: ITunesSong)
    
}
