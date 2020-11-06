//
//  TrackerApp.swift
//  Tracker
//
//  Created by Nicholas Coffey on 11/5/20.
//

import SwiftUI
import Firebase
//import FirebaseUI

@main
struct TrackerApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    init() {
        FirebaseApp.configure()
//        let db = Firestore.firestore()
    }
    
    var body: some Scene {
        WindowGroup {	
            ContentView()
        }
    }
}

//class AppDelegate: NSObject, UIApplicationDelegate, FUIAuthDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        FirebaseApp.configure()
//        let db = Firestore.firestore()
//
//        authUI?.delegate = self
//        let providers: [FUIAuthProvider] = [FUIGoogleAuth()]
//        authUI?.providers = providers
//        let authViewController = authUI?.authViewController()
//
//        return true
//    }
//}
