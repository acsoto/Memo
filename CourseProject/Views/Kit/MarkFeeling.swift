//
//  MarkFeeling.swift
//  Memo
//
//  Created by 周子航 on 2021/10/26.
//

import SwiftUI

struct MarkFeeling: View {
    @Binding var feeling: String

    var body: some View {
        VStack(alignment: .leading) {
            Text("感想").font(.title2).foregroundColor(.gray)
            Text(feeling)
        }
    }
}
