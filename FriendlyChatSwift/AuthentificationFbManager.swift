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


  func signedUp(email: String, password: String, completion: (FIRUser?, NSError?) -> ()) {
    FIRAuth.auth()?.createUserWithEmail(email, password: password) { (user, error) in
      if let error = error {
        print(error.localizedDescription)
        completion(nil, error)
      } else {
        self.setDisplayName(user!)
      }
    }
  }

  func signOut(completion: NSError? ->()) {
    let firebaseAuth = FIRAuth.auth()
    do {
      try firebaseAuth?.signOut()
      AppState.sharedInstance.signedIn = false
      completion(nil)
    } catch let signOutError as NSError {
      completion(signOutError)
      print ("Error signing out: \(signOutError)")
    }
  }

  private func setDisplayName(user: FIRUser) {
    let changeRequest = user.profileChangeRequest()
    changeRequest.displayName = user.email!.componentsSeparatedByString("@")[0]
    changeRequest.commitChangesWithCompletion(){ (error) in
      if let error = error {
        print(error.localizedDescription)
        return
      }
      self.signedIn(FIRAuth.auth()?.currentUser)
    }
  }


}