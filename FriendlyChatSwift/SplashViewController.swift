//
//  SplashViewController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 31/08/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import UIKit

class SplashViewController: ParentViewController {

  // *********************************************************************
  // MARK: - IBOutlets



  // *********************************************************************
  // MARK: - IBActions

  // *********************************************************************
  // MARK: - Properties
    static private let SEGUE_TUTORIAL = "tutorialVCSegue"

  // *********************************************************************
  // MARK: - LifeCycle

  override func viewDidLoad() {
    super.viewDidLoad()
    print("soef")
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    sleep(4)
    performSegueWithIdentifier(SplashViewController.SEGUE_TUTORIAL, sender: nil)
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // IF WE NEED TO SEND DATA
  }

  // *********************************************************************
  // MARK: - Private
}