//
//  MarkDetail.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/24.
//

import SwiftUI

struct MarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    @Binding var mark: Mark

    var body: some View {
        List {
            VStack {
                if let obj = getObj(modelData: modelData, mark: mark) {
                    if obj is Movie {
                        MovieDescription(movie: obj as! Movie)
                    } else {
                        BookDescription(book: obj as! Book)
                    }
                } else {
                    Text(mark.name)
                            .font(.title)
                            .foregroundColor(.primary)
                }
                VStack(alignment: .leading) {
                    Divider()
                    Text("时间线").font(.title2)
                    MarkDateList(dates: $mark.dates)
                    Divider()
                    Text("感想").font(.title2)
                    Text(mark.feeling).foregroundColor(.gray)
                    Divider()
                }
                        .padding()
                if mark.type != ModelType.DAY {
                    HStack {
                        NavigationLink(
                                destination:
                                MarkEdit(mark: $mark),
                                label: {
                                    Image(systemName: "square.and.pencil")
                                            .font(.title)
                                }
                        )
                    }
                }
            }
        }
    }


}


