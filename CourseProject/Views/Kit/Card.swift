//
//  Card.swift
//  Memo
//
//  Created by 周子航 on 2021/10/26.
//

import SwiftUI

struct Card: View {
    @EnvironmentObject var modelData: ModelData

    var url: String = "NiceDay"
    @Binding var mark: Mark
    var str1: String = ""
    var str2: String = ""
    var str3: String = ""

    var body: some View {
        VStack {
            if let obj = getObj(modelData: modelData, mark: mark) {
                if obj is Movie {
                    if (obj as! Movie).cover == "" {
                        Image("Forest")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                    } else {
                        RectangleImage(withURL: (obj as! Movie).cover)
                    }
                } else {
                    Image("Valcano")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                }
            } else {
                Image("NiceDay")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
            }
            HStack {
                VStack(alignment: .leading) {
                    Text(date2String(mark.dates[0]))
                            .font(.headline)
                            .foregroundColor(.secondary)
                    Text(mark.name)
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(3)
                    Text(mark.feeling)
                            .foregroundColor(.secondary)
                }
                        .layoutPriority(100)
                Spacer()
            }
                    .padding()
        }
                .cornerRadius(20)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.sRGB, red: 150 / 255, green: 150 / 255, blue: 150 / 255, opacity: 0.1), lineWidth: 1)
                )
                .padding([.top, .horizontal])
    }
}

