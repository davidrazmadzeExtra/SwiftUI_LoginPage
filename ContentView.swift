//
//  ContentView.swift
//  LoginPage
//
//  Created by David Razmadze on 10/18/21.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: - Properties
  @State var email: String = ""
  @State var password: String = ""
  
  // MARK: - Body
  
  var body: some View {
    NavigationView {
      ZStack {
        
        // Background Color
        Color.white
          .ignoresSafeArea(edges: .all)
        
        // Main View
        VStack {
          // Logo
          Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .padding(.bottom, 24.0)
          
          // Fields
          VStack(spacing: 20) {
            TextField("Email", text: $email, prompt: Text("Enter email..."))
              .font(.title2)
              .textFieldStyle(.roundedBorder)
              .autocapitalization(.none)
            
            SecureField("Password", text: $password, prompt: Text("Enter password..."))
              .font(.title2)
              .textFieldStyle(.roundedBorder)
          }
          .padding()
          .padding(.bottom, 8.0)
          
          // Buttons
          VStack(spacing: 16) {
            
            // Sign In
            Button {
              print("email: \(email)")
              print("password: \(password)")
            } label: {
              Text("Sign In")
                .frame(maxWidth: .infinity)
                .font(.title2.bold())
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(16)

            // Create Account
            Button {
              print("TODO: Create Account")
            } label: {
              Text("Create Account")
                .frame(maxWidth: .infinity)
                .font(.title2)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(16)
            
          }
          .padding()
          
          Spacer()
          
          Button {
            print("TODO: Forgot Password")
          } label: {
            Text("Forgot Password?")
              .frame(maxWidth: .infinity)
              .font(.title3)
              .foregroundColor(.red)
          }
          .padding()
          
        }
        
        
      }
      // Title
      .navigationTitle("Login Page")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
