//
//  LoadingView.swift
//  Weather
//
//  Created by RESAN on 15/05/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
       ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
