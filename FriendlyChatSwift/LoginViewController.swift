//
//  LoginViewController.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 31/08/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: ParentViewController {

  // *********************************************************************
  // MARK: - IBOutlets

  @IBOutlet weak var emailField: UITextField!
  @IBOutlet weak var passwordField: UITextField!

  // *********************************************************************
  // MARK: - IBActions

  @IBAction func connectionDidTap(sender: AnyObject) {
  }

  // *********************************************************************
  // MARK: - Properties
  static private let SEGUE_LOGIN = "loginVCSegue"

  // *********************************************************************
  // MARK: - LifeCycle

  override func viewDidLoad() {
    super.viewDidLoad()
    print("soef3")
  }


  // *********************************************************************
  // MARK: - Private
}