//
//  AnimalModel.swift
//  African Animals
//
//  Created by Simbarashe Mupfururirwa on 2024/05/05.
//

import Foundation

struct AnimalModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
