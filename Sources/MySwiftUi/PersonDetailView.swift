//
//  PersonDetailView.swift
//  MySwiftUi
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct PersonDetailView: View {
    let person: Library
    
    var body: some View {
        VStack {
            Image(person.thumbnail)
                .resizable()
                .scaledToFit()
            Text(person.name)
                .font(.headline)
                .padding()
            Text(person.maj)
                .font(.subheadline)
                .padding()
        }
    }
}

