//
//  ContentView.swift
//  WomanPeriodApp
//
//  Created by Diana Alejandra Pava A on 1/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("welcome_app")
                .resizable()
                .ignoresSafeArea()
            Text("Bienvenida a")
                .font(.system(size: 45).bold().italic())
                .foregroundColor(.white)
                .shadow(radius: 20).opacity(0.7)
                .padding(.bottom, 450)
                .padding(.leading, -80)
            Text("Woman Period")
                .font(.system(size: 40).bold())
                .foregroundColor(.pink)
                .shadow(radius: 10).opacity(0.5)
                .padding(.bottom, 350)
            HStack{
                Button("Iniciar Sesión", systemImage: "heart") {
                    
                }.foregroundColor(.white).bold().opacity(0.8)
                .frame(width: 200, height: 40)
            }.background(Color.pink)
                .cornerRadius(20)
                .padding(.bottom, 100)
            HStack{
                Text("¿Aun no te registaste?")
                    .foregroundColor(.black).bold().opacity(0.5)
                Button("Hazlo ahora") {
                    
                }.foregroundColor(.pink).bold().opacity(0.8)
            }
            .padding(.bottom, 10)
        }
    }
}

#Preview {
    ContentView()
}
