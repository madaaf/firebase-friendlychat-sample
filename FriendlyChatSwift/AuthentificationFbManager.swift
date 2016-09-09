//
//  AuthentificationFbManager.swift
//  FriendlyChatSwift
//
//  Created by mada aflak on 09/09/2016.
//  Copyright © 2016 Google Inc. All rights reserved.
//

import Foundation
import Firebase

class AuthentificationFbManager {

  func signedIn(user: FIRUser?) {
    MeasurementHelper.sendLoginEvent()
    AppState.sharedInstance.displayName = user?.displayName ?? user?.email
    AppState.sharedInstance.photoUrl = user?.photoURL
    AppState.sharedInstance.signedIn = true
    NSNotificationCenter.defaultCenter().postNotificationName(Constants.NotificationKeys.SignedIn, object: nil, userInfo: nil)
  }

}