//
//  SessionStore.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/6/20.
//

import Firebase

class SessionStore: ObservableObject {
    @Published private var user: User?
    
    init(user: User?) {
        self.user = user
    }
    
    func getUser() -> User? {
        return user
    }
    
    func signIn(email: String, password: String, completion: @escaping (_ profile: UserProfile?, _ error: Error?) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print("Error signing in: \(error)")
                completion(nil, error)
                return
            }
            
            guard let user = result?.user else { return }
            self.user = user
            print("User \(user.uid) signed in.")
        }
    }
    
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            self.user = nil
        }
        catch let signOutError as NSError {
            print("Error signing out: \(signOutError)")
        }
    }
}
