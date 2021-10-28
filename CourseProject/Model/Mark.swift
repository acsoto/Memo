//
//  Mark.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/24.
//

import Foundation

class Mark: Codable, Identifiable{
    var index:Int = 0
    var type:ModelType = ModelType.NONE
    var name = ""
    var dates: [Date] = []
    var feeling = ""

    init(index: Int,type:ModelType, name:String, date:Date, feeling:String){
        self.index = index
        self.type = type
        self.name = name
        self.dates.append(date)
        self.feeling = feeling
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        name = try container.decode(String.self, forKey: .name)
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//    }
}

//enum CodingKeys: CodingKey {
//    case index
//    case type
//    case name
//    case dates
//    case feeling
//}
