//
//  DateManager.swift
//  Memo
//
//  Created by 周子航 on 2021/10/25.
//

import Foundation


func date2String(_ date: Date, dateFormat: String = "yyyy年MM月dd日") -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale.init(identifier: "zh_CN")
    formatter.dateFormat = dateFormat
    let date = formatter.string(from: date)
    return date
}


func date2StringId(_ date: Date, dateFormat: String = "yyyyMMdd") -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale.init(identifier: "zh_CN")
    formatter.dateFormat = dateFormat
    let date = formatter.string(from: date)
    return date
}

func date2StringDay(_ date: Date, dateFormat: String = "dd") -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale.init(identifier: "zh_CN")
    formatter.dateFormat = dateFormat
    let date = formatter.string(from: date)
    return date
}

func date2StringYearAndMonth(_ date: Date, dateFormat: String = "yyyyMM") -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale.init(identifier: "zh_CN")
    formatter.dateFormat = dateFormat
    let date = formatter.string(from: date)
    return date
}
