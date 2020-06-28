//
//  SongCellModel.swift
//  iOSArchitecturesDemo
//
//  Created by Пазин Даниил on 28.06.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import Foundation

struct SongCellModel {
    let title: String
    let subtitle: String?
    let collectionName: String?
}

final class SongCellModelFactory {
    
    static func cellModel(from model: ITunesSong) -> SongCellModel {
        return SongCellModel(title: model.trackName,
                             subtitle: model.artistName,
                             collectionName: model.collectionName)
    }
}
