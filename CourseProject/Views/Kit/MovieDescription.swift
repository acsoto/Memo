//
//  MovieDescription.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/23.
//

import SwiftUI

struct MovieDescription: View {
    var movie: Movie

    var body: some View {
        VStack {
            CircleImage(withURL: movie.cover)
            VStack(alignment: .leading) {
                Text(movie.name)
                        .font(.title)
                        .foregroundColor(.primary)

                HStack {
                    Text(movie.actors)
                    Spacer()
                    Text(movie.directors)
                }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                Divider()

                Group {
                    Text("豆瓣评分：\(movie.score)")
                            .font(.title2)
                    Spacer()
                    Text("电影别名：\(movie.alias)")
                    Text("分类：\(movie.generes)")
                    Text("语言：\(movie.language)")
                    Text("地区：\(movie.region)")
                    Text("\(movie.site)")

                    Divider()
                    Text("简介").font(.title2)
                    Text(movie.storyline)
                }
            }
                    .padding()
            Spacer()
        }
    }
}


