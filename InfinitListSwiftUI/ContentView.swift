//
//  ContentView.swift
//  InfinitListSwiftUI
//
//  Created by Hafiz on 27/06/2021.
//
import Combine
import SwiftUI

struct ContentView: View {
    @ObservedObject private var userViewModel = UserViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userViewModel.users, id: \.id) { user in
                    UserRow(user: user)
                }
                LoaderView(isFailed: $userViewModel.isRequestFailed)
                    .onAppear(perform: fetchData)
                    .onTapGesture(perform: onTapLoadView)
            }
            .onAppear(perform: fetchData)
            .navigationTitle("GitHub Users")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
    
    private func fetchData() {
        userViewModel.getUsers()
    }
    
    private func onTapLoadView() {
        // enable tap to reload
        if userViewModel.isRequestFailed {
            userViewModel.isRequestFailed = false
            fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
