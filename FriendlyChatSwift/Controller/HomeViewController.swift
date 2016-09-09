//
//  HomeViewController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 09/09/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation

class HomeViewController: ParentViewController {

  // *********************************************************************
  // MARK: - IBOutlets


  // *********************************************************************
  // MARK: - IBActions
  @IBAction func signOutDidTap(sender: AnyObject) {
    let authManager = AuthentificationFbManager()
    authManager.signOut { error in
      if let error = error {
        print(error)
        self.showErrorAlertView(error.localizedDescription)
      } else {
        self.dismissViewControllerAnimated(true, completion: nil)
      }
    }
  }

  // *********************************************************************
  // MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    print("home view controller")
  }


  // *********************************************************************
  // MARK: - Private
}
