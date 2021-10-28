//
//  MarkDateList.swift
//  Memo
//
//  Created by 周子航 on 2021/10/25.
//

import SwiftUI

struct MarkDateList: View {
    @Binding var dates: [Date]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<dates.count, id: \.self) { id in
                HStack {
                    Text("第 \(id + 1) 次看").foregroundColor(.gray)
                    Text(date2String(dates[id]))
                            .foregroundColor(.gray)
                }
            }
        }
    }
}

