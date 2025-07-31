//
//  HomeView.swift
//  ExpenseBuddy
//
//  Created by RajPratapSingh on 31/07/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var session: SessionManager

    var body: some View {
        VStack {
            Text("Welcome, \(session.user?.email ?? "User")!")
                .font(.title)

            Button("Logout") {
                session.signOut()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}


