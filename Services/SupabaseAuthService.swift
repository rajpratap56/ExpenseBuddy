//
//  SupabaseAuthService.swift
//  ExpenseBuddy
//
//  Created by RajPratapSingh on 31/07/25.
//
import Foundation
import Supabase

final class SupabaseAuthService: ObservableObject {
    static let shared = SupabaseAuthService()
    
    let client = SupabaseClient(
        supabaseURL: URL(string: "https://puwtznbbhxifpaawblih.supabase.co")!,
        supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB1d3R6bmJiaHhpZnBhYXdibGloIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTM5MTIzNzgsImV4cCI6MjA2OTQ4ODM3OH0.YHqd8LtkW0m1oG7utTYw_m8RGs0F3b8QrGDhZUhA8vE"
    )
    
    private init() {}

       // ✅ Login (sign in)
       func signIn(email: String, password: String) async throws {
           try await client.auth.signIn(email: email, password: password)
       }

       // ✅ Signup
       func signUp(email: String, password: String) async throws {
           try await client.auth.signUp(email: email, password: password)
       }

       // ✅ Logout
       func logout() async throws {
           try await client.auth.signOut()
       }
   }
