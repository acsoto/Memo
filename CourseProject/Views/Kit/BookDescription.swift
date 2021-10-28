//
//  BookDescription.swift
//  Memo
//
//  Created by 周子航 on 2021/10/26.
//

import SwiftUI

struct BookDescription: View {
    var book: Book

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(book.name)
                        .font(.title)
                        .foregroundColor(.primary)

                HStack {
                    Text(book.press)
                    Spacer()
                    Text(book.author)
                }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                Divider()

                Group {
                    Text("豆瓣评分：\(book.score)")
                            .font(.title2)
                    Spacer()
                    Text("评分人数：\(book.votes)")
                    Text("出版时间：\(book.pressdate)")
                    Text("价格：\(book.price)")
                }
            }
                    .padding()
            Spacer()
        }
    }
}
