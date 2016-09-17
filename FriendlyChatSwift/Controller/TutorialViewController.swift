//
//  TutorialViewController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 07/09/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import UIKit

class TutorialViewController: ParentViewController {

  // *********************************************************************
  // MARK: - IBOutlets


  // *********************************************************************
  // MARK: - IBActions

  // *********************************************************************
  // MARK: - Properties
  static private let SEGUE_LOGIN = "loginVCSegue"

  // *********************************************************************
  // MARK: - LifeCycle

  override func viewDidLoad() {
    super.viewDidLoad()
    print("soef2")
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    sleep(4)
    performSegueWithIdentifier(TutorialViewController.SEGUE_LOGIN, sender: nil)
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  }

  // *********************************************************************
  // MARK: - Private

}