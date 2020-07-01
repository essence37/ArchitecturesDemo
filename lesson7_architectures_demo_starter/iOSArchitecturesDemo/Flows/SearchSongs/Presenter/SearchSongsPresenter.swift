//
//  SearchSongsPresenter.swift
//  iOSArchitecturesDemo
//
//  Created by Пазин Даниил on 28.06.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

final class SearchSongsPresenter {
    
    weak var viewInput: (UIViewController & SearchSongsViewInput)?
    
    private let searchService = ITunesSearchService()
    
    private func requestSongs(with query: String) {
        self.searchService.getSongs(forQuery: query) { [weak self] result in
            guard let self = self else { return }
            self.viewInput?.throbber(show: false)
            result
                .withValue { songs in
                    guard !songs.isEmpty else {
                        self.viewInput?.showNoResults()
                        return
                    }
                    self.viewInput?.hideNoResults()
                    self.viewInput?.searchResults = songs
            }
            .withError {
                self.viewInput?.showError(error: $0)
            }
        }
    }
    
    private func openSongDetails(with song: ITunesSong) {
        let songDetailViewController = SongDetailViewController(song: song)

        self.viewInput?.navigationController?.pushViewController(songDetailViewController, animated: true)
    }
}

extension SearchSongsPresenter: SearchSongsViewOutput {
    
    func viewDidSearch(with query: String) {
        self.viewInput?.throbber(show: true)
        self.requestSongs(with: query)
    }
    
    func viewDidSelectSong(_ song: ITunesSong) {
        self.openSongDetails(with: song)
    }
    
    
}

