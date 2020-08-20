//
//  ContentView.swift
//  Increment
//
//  Created by Wesley Brito on 19/08/20.
//

import SwiftUI

struct LandingView: View {
    @State private var isActive = false
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                VStack {
                    Spacer().frame(height: proxy.size.height * 0.18)
                    Text("Increment")
                        .font(.system(size: 64, weight: .medium))
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination: CreateView(), isActive: $isActive) {
                        Button(action: {
                            isActive = true
                        }) {
                            HStack(spacing: 15) {
                                Spacer()
                                Image(systemName: "plus.circle")
                                    .font(.system(size: 24, weight: .semibold))
                                    .foregroundColor(.white)
                                Text("Create a challenge")
                                    .font(.system(size: 24, weight: .semibold))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }.padding(15)
                        .buttonStyle(PrimaryButtonStyle())
                        .padding(.bottom, 15)
                    }
                }.frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                ).background(
                    Image("pullups")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Color.black.opacity(0.4))
                        .frame(width: proxy.size.width)
                        .edgesIgnoringSafeArea(.all)
                )
            }
        }.accentColor(.primary)
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
