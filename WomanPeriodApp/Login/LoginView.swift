//
//  LoginView.swift
//  WomanPeriodApp
//
//  Created by Diana Alejandra Pava A on 1/09/25.
//
import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack{
            Image("login_image")
                .resizable()
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Text("Iniciar sesion")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.pink)
                    .shadow(radius: 8).opacity(0.7)
                    .padding(.leading, 100)
                TextField("Usuario", text: $username)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding(8)
                    .background(Color.pink.opacity(0.3))
                    .cornerRadius(10)
                    .padding(.horizontal, 30)
                    .padding(.top, 20)
                    .onChange(of: username, perform: { value in
                        print("Username value \(value)")
                    })
                SecureField("Constraseña", text: $password)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding(8)
                    .background(Color.pink.opacity(0.3))
                    .cornerRadius(10)
                    .padding(.horizontal, 30)
                    .onChange(of: password, perform: { value in
                        print("Password value \(value)")
                    })
                Button("Ingresar") {
                    print("👤: \(username) ")
                    print("🔑: \(password) ")
                } .frame(width: 150, height: 40)
                    .foregroundColor(Color.white).bold()
                    .background(Color.pink)
                    .cornerRadius(20)
                    .padding(.top, 20)
                    .padding(.leading, 110)
                Spacer()
            }.padding(.top, 20)
        }
    }
}

#Preview {
    LoginView()
}
