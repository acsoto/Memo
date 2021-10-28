//
//  MovieList.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/19.
//

import SwiftUI


struct MarkList: View {
    @EnvironmentObject var modelData: ModelData
    var type: ModelType

    var filteredMarks: [Mark] {
        modelData.marks.filter { mark in
            mark.type == type
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                List {
                    NavigationLink(destination: MarkAdd(type: type)) {
                        HStack {
                            Image(systemName: "plus")
                            Text("添加").font(.headline)
                        }
                    }
                    ForEach(filteredMarks) { mark in
                        NavigationLink(destination: MarkDetail(mark: $modelData.marks[mark.index])) {
                            Text(mark.name)
                        }
                    }
                }
            }.navigationTitle("\(type.rawValue)列表")
        }
    }
}
