//
//  CreateView.swift
//  Increment
//
//  Created by Wesley Brito on 19/08/20.
//

import SwiftUI

struct CreateView: View {
    @State private var isActive = false
    var body: some View {
        ScrollView {
            
            VStack {
                DropdownView()
                DropdownView()
                DropdownView()
                DropdownView()
                Spacer()
                NavigationLink(
                    destination: RemindView(),
                    isActive: $isActive) {
                    Button(action: {
                        isActive = true
                    }) {
                        Text("Next")
                            .font(.system(size: 24, weight: .medium))
                            .foregroundColor(.primary)
                    }
                    }
            }.navigationTitle("Create")
            .navigationBarBackButtonHidden(true)
        }
    }
}
