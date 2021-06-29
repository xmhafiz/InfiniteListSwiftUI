
//
//  UserRow.swift
//  InfinitListSwiftUI
//
//  Created by Hafiz on 27/06/2021.
//

import SwiftUI

struct UserRow: View {
    let user: User
    var body: some View {
        HStack (spacing: 12) {
            Image("imagePlaceholder")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            Text(user.name)
        }
        .padding(4)
        
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        let mockUser = User(id: 1, name: "John Doe", avatarUrl: "")
        UserRow(user: mockUser)
    }
}
