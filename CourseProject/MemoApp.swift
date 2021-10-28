//
//  MemoAppApp.swift
//  MemoApp
//
//  Created by 周子航 on 2021/10/18.
//

import SwiftUI

@main
struct MemoApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                    .environmentObject(modelData)
        }
    }
}
