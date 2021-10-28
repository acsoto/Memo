//
//  ModelData.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/19.
//

import Foundation
import Combine


final class ModelData: ObservableObject {
    var moviesDict = getMoviesDict(movies: load("movies.json"))
    var booksDict = getBooksDict(books: load("books.json"))
    @Published var marks: [Mark] = []

    init() {
        loadMarks()
    }

    func loadMarks() {
        marks = UserDefaults.standard.object(([Mark]).self, with: "Marks") ?? []
    }

    func saveMarks() {
        let standard = UserDefaults.standard
        standard.set(object: marks, forKey: "Marks")
    }
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

func getMoviesDict(movies: [Movie]) -> Dictionary<String, Movie> {
    var moviesDict = Dictionary<String, Movie>()
    for i in movies {
        moviesDict[i.name] = i
    }
    return moviesDict
}


func getBooksDict(books: [Book]) -> Dictionary<String, Book> {
    var booksDict = Dictionary<String, Book>()
    for i in books {
        booksDict[i.name] = i
    }
    return booksDict
}

extension UserDefaults {
    func object<T: Codable>(_ type: T.Type, with key: String, usingDecoder decoder: JSONDecoder = JSONDecoder()) -> T? {
        guard let data = self.value(forKey: key) as? Data else {
            return nil
        }
        return try? decoder.decode(type.self, from: data)
    }

    func set<T: Codable>(object: T, forKey key: String, usingEncoder encoder: JSONEncoder = JSONEncoder()) {
        let data = try? encoder.encode(object)
        self.set(data, forKey: key)
    }
}
