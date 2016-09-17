//
//  InscriptionViewController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 07/09/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import UIKit

class InscriptionViewController: ParentViewController {

  // *********************************************************************
  // MARK: - IBOutlets
  @IBOutlet weak var emailField: UITextField!
  @IBOutlet weak var passwordField: UITextField!

  @IBAction func emailDidTap(sender: AnyObject) {
    //Code 
  }
  // *********************************************************************
  // MARK: - IBActions
  @IBAction func validateDidTap(sender: AnyObject) {
    let authManager = AuthentificationFbManager()
    if !stringNilOrEmpty(emailField.text) && !stringNilOrEmpty(passwordField.text) {
      authManager.signedUp(emailField.text!, password: passwordField.text!) { (user, error) in
          print(user)
        if let _ = error {
          self.showErrorAlertView(error!.localizedDescription)
        } else {
          self.performSegueWithIdentifier(ParentViewController.SEGUE_HOME, sender: nil)
        }
      }
    } else {
       self.showErrorAlertView("Email or password empty")
    }
  }

  // *********************************************************************
  // MARK: - LifeCycle
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    print("soef4")
  }

  // *********************************************************************
  // MARK: - Private
  private func stringNilOrEmpty(str: String?) -> Bool {
    return str==nil || str==""
  }
}