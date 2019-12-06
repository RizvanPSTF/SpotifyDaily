//
//  ArtistsCollectionCoordinator.swift
//  SpotifyDaily
//
//  Created by Kevin Li on 12/5/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import Foundation
import UIKit

class ArtistsCollectionCoordinator: BaseCoordinator {
    
    var artistsCollectionViewController: BaseNavigationController!
    
    private let viewModel: ArtistsCollectionViewModel
    
    init(viewModel: ArtistsCollectionViewModel) {
        self.viewModel = viewModel
    }

    override func start() {
        var viewController = ArtistsCollectionViewController()
        viewController.bind(to: self.viewModel)
        
        artistsCollectionViewController = BaseNavigationController(rootViewController: viewController)
        artistsCollectionViewController.navigationBar.isHidden = true
        
        self.navigationController.presentOnTop(artistsCollectionViewController, animated: true)
    }
    
}