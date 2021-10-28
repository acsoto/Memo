//
//  DateFilter.swift
//  Memo
//
//  Created by 周子航 on 2021/10/26.
//

import Foundation

func isToday(dates: [Date]) -> Bool {
    for date in dates {
        if date2StringId(date) == date2StringId(Date()) {
            return true
        }
    }
    return false
}

func similarToday(dates: [Date]) -> Bool {
    for date in dates {
        if date2StringDay(date) == date2StringDay(Date()) {
            return true
        }
    }
    return false
}

func isThisMonth(dates: [Date]) -> Bool {
    for date in dates {
        if date2StringYearAndMonth(date) == date2StringYearAndMonth(Date()) {
            return true
        }
    }
    return false
}
