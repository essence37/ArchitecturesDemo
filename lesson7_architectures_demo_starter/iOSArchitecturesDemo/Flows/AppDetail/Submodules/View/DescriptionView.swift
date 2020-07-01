//
//  DescriptionView.swift
//  iOSArchitecturesDemo
//
//  Created by Пазин Даниил on 27.06.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

class DescriptionView: UIView {
    
    var appDetailHeaderView = AppDetailHeaderView()
    
    // MARK: - Subviews
    
    private(set) lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        label.numberOfLines = 2
        label.text = "Что нового"
        return label
    } ()
    
    private(set) lazy var versionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        return label
    } ()
    
    private(set) lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        return label
    } ()
    
    private(set) lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 14.0)
        label.numberOfLines = 0
        return label
    } ()
    
    private(set) lazy var versionHistoryButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("История версий", for: .normal)
        return button
    } ()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }
    
    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
        self.setupLayout()
    }
    
    // MARK: - UI
    
    private func setupLayout() {
        self.addSubview(self.titleLabel)
        self.addSubview(self.versionLabel)
        self.addSubview(self.dateLabel)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.versionHistoryButton)
        
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            self.titleLabel.rightAnchor.constraint(greaterThanOrEqualTo: self.versionHistoryButton.rightAnchor, constant: 16),
            self.versionHistoryButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.versionHistoryButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            self.versionLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 14),
            self.versionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            self.dateLabel.topAnchor.constraint(equalTo: self.versionHistoryButton.bottomAnchor, constant: 14),
            self.dateLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            self.dateLabel.leftAnchor.constraint(greaterThanOrEqualTo: self.versionLabel.rightAnchor, constant: 16),
            self.descriptionLabel.topAnchor.constraint(equalTo: self.versionLabel.bottomAnchor, constant: 14),
            self.descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            self.descriptionLabel.rightAnchor.constraint(lessThanOrEqualTo: self.rightAnchor, constant: -20)
        ])
    }
}
