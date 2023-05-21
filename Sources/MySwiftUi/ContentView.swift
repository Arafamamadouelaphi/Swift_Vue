//
//  ContentView.swift
//  MySwiftUi
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                   EcouteView().tabItem{
                           Label("Ecouter",systemImage: "play.circle")
                       }
                       .foregroundColor(.accentColor)
            
            Explorer().tabItem{
                    Label("Explorer",systemImage: "square.grid.2x2")
                }
                .foregroundColor(.accentColor)
                AffichageMenu().tabItem{
                       Label("Bibliotheque",systemImage: "square.stack.fill")
                   }.foregroundColor(.accentColor)
                   RechercheView().tabItem{
                       Label("Recherche",systemImage: "magnifyingglass")
                   }
               }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().environment(\.colorScheme,.dark)
    }
}
