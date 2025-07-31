//
//  AuthViewModel.swift
//  ExpenseBuddy
//
//  Created by RajPratapSingh on 31/07/25.
//

import Foundation
import Combine

@MainActor
class AuthViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var isLoggedIn = false
    @Published var errorMessage: String?

    func login() {
        Task {
            do {
                try await SupabaseAuthService.shared.signIn(email: email, password: password)

                isLoggedIn = true
            } catch {
                errorMessage = "Login failed: \(error.localizedDescription)"
            }
        }
    }

    func signUp() {
        Task {
            do {
                try await SupabaseAuthService.shared.signUp(email: email, password: password)
                isLoggedIn = true
            } catch {
                errorMessage = "Signup failed: \(error.localizedDescription)"
            }
        }
    }

    func logout() {
        Task {
            do {
                try await SupabaseAuthService.shared.logout()
                isLoggedIn = false
            } catch {
                errorMessage = "Logout failed: \(error.localizedDescription)"
            }
        }
    }
}
