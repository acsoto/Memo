//
//  GPACalculator.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/18.
//

import Foundation


struct GPACalculator {
    var courseList: [Course]

    var gpa: Double {
        get {
            var gpaCount: Double = 0.0
            var creditCount: Double = 0.0
            for i in courseList {
                gpaCount += i.credit * getGPA(score: i.score)
                creditCount += i.credit
            }
            return gpaCount / creditCount
        }
    }

    var score: Double {
        get {
            return 100 - sqrt((4 - gpa) * 1600 / 3)
        }
    }

    func getGPA(score: Double) -> Double {
        if score < 60 {
            return 0
        } else {
            return 4 - 3 * pow(100 - score, 2) / 1600
        }
    }

}
