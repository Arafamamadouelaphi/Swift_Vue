//
//  Stub.swift
//  MySwiftUi
//
//  Created by etudiant on 19/05/2023.
//

import SwiftUI

struct Stub{
    func getEpisodes(completion: @escaping ([Episode]?, Error?) -> Void) {
                // Simulation de récupération des épisodes (valeurs fictives)
               
                    let episodes = [
                        Episode(id: UUID(), date: "2023-05-01", titre: "Épisode 1", description: "Description de l'épisode 1", heure: "20:00"),
                        Episode(id: UUID(), date: "2023-05-07", titre: "Épisode 2", description: "Description de l'épisode 2", heure: "19:30"),
                        Episode(id: UUID(), date: "2023-05-15", titre: "Épisode 3", description: "Description de l'épisode 3", heure: "21:15"),
                        Episode(id: UUID(), date: "2023-05-07", titre: "Épisode 4", description: "Description de l'épisode 2", heure: "19:30"),
                        Episode(id: UUID(), date: "2023-05-15", titre: "Épisode 5", description: "Description de l'épisode 3", heure: "21:15"),
                        Episode(id: UUID(), date: "2023-05-01", titre: "Épisode 6", description: "Description de l'épisode 1", heure: "20:00"),
                        Episode(id: UUID(), date: "2023-05-07", titre: "Épisode 7", description: "Description de l'épisode 2", heure: "19:30"),
                        Episode(id: UUID(), date: "2023-05-15", titre: "Épisode 8", description: "Description de l'épisode 3", heure: "21:15")
                    ]
                completion(episodes, nil)
            }
    }


