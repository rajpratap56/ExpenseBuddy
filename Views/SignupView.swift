//
//  SignupView.swift
//  ExpenseBuddy
//
//  Created by RajPratapSingh on 31/07/25.
//

import SwiftUI

struct SignupView: View {
    @StateObject private var authVM = AuthViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Create your ExpenseBuddy account")
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

            Button("Sign Up") {
                $authVM.signup
            }
            .buttonStyle(.borderedProminent)

            NavigationLink("Already have an account? Login", destination: LoginView())
        }
        .padding()
    }
}

