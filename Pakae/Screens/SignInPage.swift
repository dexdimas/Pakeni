//
//  SignInPage.swift
//  Pakae
//
//  Created by Stendy Antonio on 14/10/20.
//

import SwiftUI

struct SignInPage: View {
    
    var body: some View {
        
        VStack{
            
            UsernameLabelandTextField()
            
            PasswordLabelandTextField()
            
            Spacer()
            
            SigninButton()
            
        }
        .padding()
        
    }
    
}

struct SignInPage_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SignInPage()
        
    }
    
}
