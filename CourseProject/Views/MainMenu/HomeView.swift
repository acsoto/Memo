//
//  HomeView.swift
//  Memo
//
//  Created by 周子航 on 2021/10/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var modelData: ModelData

    var filteredMarks: [Mark] {
        modelData.marks.filter { mark in
            isToday(dates: mark.dates) || (mark.type == ModelType.DAY && similarToday(dates: mark.dates)) || (mark.type != ModelType.DAY && isThisMonth(dates: mark.dates))
        }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: MarkToday()) {
                    HStack {
                        Image(systemName: "plus")
                        Text("记录今天").font(.headline)
                    }
                }
                ForEach(filteredMarks) { mark in
                    NavigationLink(destination: MarkDetail(mark: $modelData.marks[mark.index])) {
                        Card(mark: $modelData.marks[mark.index])
                    }
                }
            }
//            VStack{
//                VStack{
//                    ListCardView()
//                        List {
//                            VStack{
//                                NavigationLink(destination: MarkToday()){
//                                    HStack{
//                                        Image(systemName: "plus")
//                                        Text("记录今天").font(.headline)
//                                    }
//                                }
//                                Text("1")
//                            }
//                        }
        }

//                    ForEach(filteredMarks1){ mark in
//                        NavigationLink(destination: MarkDetail(mark: mark)){
//                            HStack{
//                                Text(mark.name)
//                                Divider()
//                                Text(mark.feeling)
//                            }
//                        }
//                    }
//                    ForEach(filteredMarks2){ mark in
//                        NavigationLink(destination: MarkDetail(mark: mark)){
//                            HStack{
//                                Text(mark.name)
//                                Divider()
//                                Text(mark.feeling)
//                            }
//                        }
//                    }

//            }.navigationTitle("首页")
//        }
    }

}

struct sss_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ListCardView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                HStack {
                    VStack(alignment: .leading) {
                        Text("明代")
                                .font(.headline)
                                .foregroundColor(.secondary)
                        Text("销闲清课图")
                                .font(.title)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(3)
                        Text("此《销闲清课图》卷由明代孙克弘绘制。")
                                .foregroundColor(.secondary)
                    }
                            .layoutPriority(100)
                    //将VStack 推到左侧
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

            //second
            VStack {
                Image("wangguo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                HStack {
                    VStack(alignment: .leading) {
                        Text("清朝")
                                .font(.headline)
                                .foregroundColor(.secondary)
                        Text("万国来朝图")
                                .font(.title)
                                .fontWeight(.black)
                                .foregroundColor(.primary)
                                .lineLimit(3)
                        Text("这幅《万国来朝图轴》也是北京故宫博物院藏。此卷应为清乾隆朝早期的一幅以万国来朝（万寿：崇庆皇太后七十大寿）为题材的作品。卷右上有清乾隆二十六年乾隆帝御题。")
                                .foregroundColor(.secondary)
                    }
                            .layoutPriority(100)
                    //将VStack 推到左侧
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
        }.navigationTitle("首页")
    }

}
