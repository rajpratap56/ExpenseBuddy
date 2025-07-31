//
//  LoginView.swift
//  ExpenseBuddy
//
//  Created by RajPratapSingh on 31/07/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var authVM = AuthViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Login to ExpenseBuddy")
                .font(.title.bold())
                .padding()

            TextField("Email", text: $authVM.email)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none)

            SecureField("Password", text: $authVM.password)
                .textFieldStyle(.roundedBorder)

            if let error = authVM.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            }

            Button("Login") {
                authVM.login()
            }
            .buttonStyle(.borderedProminent)

            NavigationLink("Don't have an account? Sign Up", destination: SignupView())
        }
        .padding()
    }
}

