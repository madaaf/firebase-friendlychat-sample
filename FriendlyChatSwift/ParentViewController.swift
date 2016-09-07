//
//  ParentViewController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 31/08/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import UIKit

class ParentViewController: UIViewController {


  // Execute le constructeur
  // storyboard loade: toute les outlet sont set
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // appelé x fois; à chaque fois que la fenetre apparait
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    if navigationController?.topViewController == self {
      configureTopBar()
    }
    setNeedsStatusBarAppearanceUpdate()
  }
  // contrainte activés
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
  }

  override func viewWillDisappear(animated: Bool) {
    super.viewWillDisappear(animated)
  }

  override func viewDidDisappear(animated: Bool) {
    super.viewDidDisappear(animated)
  }


  // *********************************************************************
  // MARK: - Configure
  func configureTopBar() {
    if navigationController?.viewControllers.first != self {
      addCustomBackButton()
    }
    navigationController!.navigationBar.barTintColor = navigationColor()
  }

  func navigationColor() -> UIColor {
    return UIColor.blackColor()
  }

  func addCustomBackButton() {
    let newBackButton = UIBarButtonItem()
    newBackButton.tintColor = UIColor.whiteColor()
    navigationItem.leftBarButtonItem = newBackButton
  }

}
