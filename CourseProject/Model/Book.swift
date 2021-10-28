//
//  Book.swift
//  Memo
//
//  Created by 周子航 on 2021/10/26.
//

import Foundation

struct Book: Hashable, Codable, MarkableObject {
    var name: String = ""
    var author: String = ""
    var press: String = ""
    var pressdate: String = ""
    var number: String = ""
    var price: String = ""
    var ISBM: String = ""
    var score: String = ""
    var votes: String = ""
}
