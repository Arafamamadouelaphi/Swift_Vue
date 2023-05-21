//
//  Library.swift
//  MySwiftUi
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct Library: Identifiable {
        let id = UUID()
        var thumbnail: String
        var name: String
        var maj: String
}

var staf = [
    Library(thumbnail: String("Chaleur"),name: "Chaleur Humaine", maj: " Mise a jour :Lundi" ),
    Library(thumbnail: String("podcast"),name: "Le code à changer", maj: " Mise a jour :Mardi" ),
    Library(thumbnail: String("podcast4"),name: "La drole d'humeur de Guiz", maj: " Mise a jour :Jeudi" ),
    Library(thumbnail: String("podcast5"),name: "La science CQFD", maj: " Mise a jour :Vendredi" ),
    Library(thumbnail: String("podcast2"),name: "Nadie sabe nada", maj: " Mise a jour :Samedi" ),
    Library(thumbnail: String("podcast"),name: "Le code à changer", maj: " Mise a jour :Lundi" ),
    Library(thumbnail: String("glm"),name: "moment Meurice", maj: " Mise a jour:Aujourd'hui" ),
    Library(thumbnail: String("podcast5"),name: "Le drole d'humeur", maj: " Mise a jour :Lundi" ),
    Library(thumbnail: String("podcast"),name: "Le code à changer", maj: " Mise a jour :jeudi" )
]


