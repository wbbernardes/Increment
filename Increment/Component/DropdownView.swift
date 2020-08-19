//
//  DropdownView.swift
//  Increment
//
//  Created by Wesley Brito on 19/08/20.
//

import SwiftUI

struct DropdownView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Exercise")
                Spacer()
            }
            Button(action: {}) {
                HStack {
                    Text("Pushups")
                    Spacer()
                    Image(systemName: "arrowtriangle.down.circle")
                }
            }.buttonStyle(PrimaryButtonStyle())
        }
    }
}

struct DropdownView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DropdownView()
        }
        NavigationView {
            DropdownView()
        }.environment(\.colorScheme, .dark)
    }
}
