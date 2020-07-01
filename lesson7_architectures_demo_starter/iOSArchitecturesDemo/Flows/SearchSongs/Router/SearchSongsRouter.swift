//
//  SearchSongsRouter.swift
//  iOSArchitecturesDemo
//
//  Created by Пазин Даниил on 01.07.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

protocol SearchSongsRouterInput {
    func openDetails(for song: ITunesSong)
    func openSongInITunes(_ song: ITunesSong)
}

final class SearchSongsRouter: SearchSongsRouterInput {
    
    weak var viewController: UIViewController?
    
    func openDetails(for song: ITunesSong) {
        let songDetaillViewController = SongDetailViewController(song: song)
        self.viewController?.navigationController?.pushViewController(songDetaillViewController, animated: true)
    }
    
    func openSongInITunes(_ song: ITunesSong) {
        guard let urlString = song.artwork, let url = URL(string: urlString) else {
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

