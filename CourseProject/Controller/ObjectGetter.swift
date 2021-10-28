//
//  ObjectGetter.swift
//  Memo
//
//  Created by 周子航 on 2021/10/26.
//

import Foundation

func getObj(modelData: ModelData, mark: Mark) -> MarkableObject? {
    let name = mark.name
    let type = mark.type
    var obj: MarkableObject?
    if type == ModelType.MOVIE {
        let addrType = "电影"
        if let cur = modelData.moviesDict[name] {
            obj = cur
        } else {
            if let cur = modelData.moviesDict["\(name) - \(addrType)"] {
                obj = cur
            } else {
                obj = nil
            }
        }
    }
    if type == ModelType.BOOK {
        if let cur = modelData.booksDict[name] {
            obj = cur
        } else {
            obj = nil
        }
    }
    return obj
}
