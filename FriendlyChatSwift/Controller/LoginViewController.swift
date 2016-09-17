//
//  LoginViewController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 31/08/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import IQKeyboardManagerSwift

class LoginViewController: ParentViewController {

  // *********************************************************************
  // MARK: - Properties
  static private let SEGUE_LOGIN = "loginVCSegue"

  // *********************************************************************
  // MARK: - IBOutlets

  @IBOutlet weak var emailField: UITextField!
  @IBOutlet weak var passwordField: UITextField!

  // *********************************************************************
  // MARK: - IBActions
  @IBAction func connectionDidTap(sender: AnyObject) {
    let authManager = AuthentificationFbManager()
    // Sign In with credentials.
    let email = emailField.text
    let password = passwordField.text
    FIRAuth.auth()?.signInWithEmail(email!, password: password!) { (user, error) in
      if let error = error {
        print(error.localizedDescription)
        self.showErrorAlertView(error.localizedDescription)
        return
      } else {
        authManager.signedIn(user!)
        self.performSegueWithIdentifier(ParentViewController.SEGUE_HOME, sender: nil)
      }
    }
  }

  // *********************************************************************
  // MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    print("soef3")
  }

  // *********************************************************************
  // MARK: - Private
 

}