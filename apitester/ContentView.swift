//
//  ContentView.swift
//  apitester
//
//  Created by Freddie H on 06/06/2024.
//

import SwiftUI

struct ContentView: View {
    
        @State private var search: String = ""
    
        @State private var results: [ApiResult] = []
        
        @State private var searchId: String = ""
        
        @ObservedObject var apiManager = ApiManager.shared
        
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
