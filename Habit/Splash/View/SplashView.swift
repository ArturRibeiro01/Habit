//
//  SplashView.swift
//  Habit
//
//  Created by Artur Mac on 01/08/22.
//

import SwiftUI

struct SplashView: View {
    @State var state : SplashUiState = .loading
    
    var body: some View {
        switch state {
        case .loading: loadingView()
            
        case .goToSignInScreen:
            Text("Eu sou a tela de SignIn")
        case .goToHomeScreen:
            Text("Eu sou a Home")
        case .error(let msg):
            loadingView(error: msg)
        }
    }
}

extension SplashView {
    func loadingView (error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .background(Color.white)
                .padding(20)
                .ignoresSafeArea()
                .frame(
                    maxWidth:.infinity,
                    maxHeight:.infinity
                    )
            
            if let error = error {
                Text("").alert(isPresented: .constant(true)){
                    Alert(title: Text("Habit"), message:Text(error), dismissButton: .default(Text("Fechar")){
                        //Efeito do Botão de Ação aqui se houver
                    })
                }
            }
        }
    }
}



struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .error("Teste de erro no servidor"))
    }
}
