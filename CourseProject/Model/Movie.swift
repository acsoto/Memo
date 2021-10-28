//
//  Movie.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/19.
//

import Foundation

struct Movie: Hashable, Codable, Identifiable, MarkableObject {
    var id: String = ""
    var name: String = ""
    var alias: String = ""
    var actors: String = ""
    var cover: String = ""
    var directors: String = ""
    var score: String = ""
    var votes: String = ""
    var generes: String = ""
    var imdbid: String = ""
    var language: String = ""
    var mins: String = ""
    var site: String = ""
    var region: String = ""
    var releasedate: String = ""
    var storyline: String = ""
    var tags: String = ""
    var year: String = ""
}
