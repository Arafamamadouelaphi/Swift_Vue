//
//  AffichageMenu.swift
//  MySwiftUi
//
//  Created by etudiant on 11/05/2023.
//

//
//  AffichageMenu.swift
//  MySwiftUi
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct AffichageMenu: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "chevron.left")
                        .padding(.trailing, 5)
                    Text("Bibliotheque")
                        .font(.headline)
                        .padding(.trailing, 20)
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                .font(.headline)
                Text("PODSTART")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.top, 20)
                    .multilineTextAlignment(.leading)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 0) {
                        ForEach(staf) { person in
                            NavigationLink(destination: BiblioView()) {
                                VStack {
                                    Image(person.thumbnail)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 160)
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text(person.name)
                                            .font(.headline)
                                            .foregroundColor(.primary)
                                        Text(person.maj)
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .padding()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct Previews_AffichageMenu_Previews: PreviewProvider {
    static var previews: some View {
        AffichageMenu()
        AffichageMenu().environment(\.colorScheme, .dark)
    }
}
