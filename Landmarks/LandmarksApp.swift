//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jan Kott on 05.02.22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
