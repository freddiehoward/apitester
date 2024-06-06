//
//  SwiftUIView.swift
//  apitester
//
//  Created by Freddie H on 06/06/2024.
//

import SwiftUI

struct SwiftUIView: View {
    
    @ObservedObject var viewModel = APIStuffViewModel.shared
    
    
    
    var body: some View {
        Text("hello")
    }
}

#Preview {
    SwiftUIView()
}
