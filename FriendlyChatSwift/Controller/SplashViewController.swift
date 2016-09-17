//
//  SplashViewController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 31/08/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import UIKit
import Firebase

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
    let authManager =  AuthentificationFbManager()
    sleep(2)
    if let user = FIRAuth.auth()?.currentUser {
      authManager.signedIn(user)
      performSegueWithIdentifier(ParentViewController.SEGUE_HOME, sender: nil)
    }
    performSegueWithIdentifier(SplashViewController.SEGUE_TUTORIAL, sender: nil)
  }


  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  }

  // *********************************************************************
  // MARK: - Private
}