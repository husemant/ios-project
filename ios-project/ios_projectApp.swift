//
//  ios_projectApp.swift
//  ios-project
//
//  Created by Tanner Huseman on 4/29/25.
//

import SwiftUI

@main
struct ios_projectApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
