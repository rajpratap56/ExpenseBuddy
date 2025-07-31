//
//  ExpenseBuddyApp.swift
//  ExpenseBuddy
//
//  Created by RajPratapSingh on 31/07/25.
//

import SwiftUI

@main
struct ExpenseBuddyApp: App {
    @StateObject var session = SessionManager()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(session)
        }
    }
}


