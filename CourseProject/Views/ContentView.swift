//
//  ContentView.swift
//  CourseProject
//
//  Created by 周子航 on 2021/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                    .tabItem({
                        Image(systemName: "person")
                        Text("首页")
                    })
            MarkList(type: ModelType.MOVIE)
                    .tabItem({
                        Image(systemName: "tv")
                        Text("电影")
                    })
            MarkList(type: ModelType.BOOK)
                    .tabItem({
                        Image(systemName: "book")
                        Text("书籍")
                    })
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
