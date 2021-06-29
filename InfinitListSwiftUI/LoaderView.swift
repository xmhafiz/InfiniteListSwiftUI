//
//  LoaderView.swift
//  InfinitListSwiftUI
//
//  Created by Hafiz on 27/06/2021.
//

import SwiftUI

struct LoaderView: View {
    @Binding var isFailed: Bool
    var body: some View {
        Text(isFailed ? "Failed. Tap to retry." : "Loading..")
            .foregroundColor(isFailed ? .red : .green)
            .padding()
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView(isFailed: .constant(false))
    }
}

