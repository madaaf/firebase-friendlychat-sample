//
//  PortraitNavigationController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 07/09/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import UIKit

class PortraitNavigationController: UINavigationController {
  // *********************************************************************
  // MARK: - Device orientation management
  override func shouldAutorotate() -> Bool {
    return false
  }

  override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    return .Portrait
  }

  override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
    return .Portrait
  }

  // *********************************************************************
  // MARK: - Status Bar appearance
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    setNeedsStatusBarAppearanceUpdate()
  }

  override func preferredStatusBarStyle() -> UIStatusBarStyle {
    return .LightContent
  }
}
