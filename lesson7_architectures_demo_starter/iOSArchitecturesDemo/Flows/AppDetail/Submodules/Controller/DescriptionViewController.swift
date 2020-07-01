//
//  ViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Пазин Даниил on 27.06.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    // MARK: - Properties
    
    private let app: ITunesApp
    
    private var descriptionView: DescriptionView {
        return self.view as! DescriptionView
    }
    
    //MARK: - Init
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle

    override func loadView() {
        super.loadView()
        self.view = DescriptionView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Private

    private func fillData() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        
        self.descriptionView.versionLabel.text = app.version
        self.descriptionView.dateLabel.text = dateFormatter.string(from: app.currentVersionReleaseDate ?? Date())
        self.descriptionView.descriptionLabel.text = app.releaseNotes
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
