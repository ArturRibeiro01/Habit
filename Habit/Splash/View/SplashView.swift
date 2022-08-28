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
        case .loading:
            
            ZStack {
                
            }
            

        case .goToSignInScreen:
            Text("Eu sou a tela de SignIn")
        case .goToHomeScreen:
            Text("Eu sou a Home")
        case .error(let msg):
            Text("O erro é:\n\(msg)")
        }
    }
}



struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .error("Palmeiras não tem mundial"))
    }
}
