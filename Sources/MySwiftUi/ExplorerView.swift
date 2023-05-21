

//
//  ContentView.swift
//  MyAppMusic
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct ExplorerView: View {
    @State var isClicked : Bool = true
    
    var body: some View {
    
        VStack {
            
            Image("imag")
            
                .ignoresSafeArea(edges: .top)
            
                .clipShape(RoundedRectangle(cornerRadius: 11))       
        
    }
        .padding()
    Spacer()
    
    
}
    
}

struct ExplorerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
