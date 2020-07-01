//
//  SongDetailViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Пазин Даниил on 30.06.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

final class SongDetailViewController: UIViewController {
    
    let song: ITunesSong
    
    lazy var headerViewController = SongDetailHeaderViewController(song: self.song)
    
    init(song: ITunesSong) {
        self.song = song
        super.init(nibName: nil, bundle: nil)
        
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureUI()
    }
    
    private func configureUI() {
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.tintColor = UIColor.white;
        self.navigationItem.largeTitleDisplayMode = .never
        self.addHeaderViewController()
    }
    
    private func addHeaderViewController() {
        self.addChild(self.headerViewController)
        self.view.addSubview(self.headerViewController.view)
        self.headerViewController.didMove(toParent: self)
        self.headerViewController.view.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([ self.headerViewController.view.topAnchor.constraint(equalTo:
            self.view.safeAreaLayoutGuide.topAnchor), self.headerViewController.view.leftAnchor.constraint(equalTo:
                self.view.leftAnchor), self.headerViewController.view.rightAnchor.constraint(equalTo:
                    self.view.rightAnchor) ])
    }
}
