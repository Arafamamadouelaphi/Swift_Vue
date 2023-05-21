//
//  EpisodeView.swift
//  MySwiftUi
//
//  Created by etudiant on 16/05/2023.
//

import SwiftUI

struct EpisodeView: View {
    let episode: Episode
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(episode.date)
                .font(.headline)
            Text(episode.titre)
                .font(.subheadline)
                .foregroundColor(.blue)
            Text(episode.description)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}
