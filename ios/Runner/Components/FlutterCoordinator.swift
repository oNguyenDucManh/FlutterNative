//
//  FlutterCoordinator.swift
//  Runner
//
//  Created by Nguyen Duc Manh on 11/24/19.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

import Foundation
import UIKit
final class FlutterCoordinator: BaseCoordinator{
    weak var navigationController: UINavigationController?
    weak var delegate: FlutterToAppCoordinatorDelegate?
    override func start() {
        super.start()
        navigationController?.popToRootViewController(animated: true)
    }
    init(navigationController: UINavigationController?) {
        super.init()
        self.navigationController = navigationController
    }
}
