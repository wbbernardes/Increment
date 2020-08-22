//
//  IncrementApp.swift
//  Increment
//
//  Created by Wesley Brito on 19/08/20.
//

import SwiftUI
import Firebase

@main
struct IncrementApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            LandingView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        debugPrint("Setting up Firebase")
        FirebaseApp.configure()
        return true
    }
}
