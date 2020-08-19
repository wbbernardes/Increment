//
//  PrimaryButtonStyle.swift
//  Increment
//
//  Created by Wesley Brito on 19/08/20.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        let fillColor: Color = .darkPrimaryButton
        return PrimaryButton(
            configuration: configuration, fillColor: fillColor
        )
    }
    
    struct PrimaryButton: View {
        let configuration: Configuration
        let fillColor: Color
        var body: some View {
            return configuration.label
                .padding(20)
                .background(RoundedRectangle(
                    cornerRadius: 8
                ).fill(fillColor))
        }
    }
}

struct PrimaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Text("Create a challenge")
        }.buttonStyle(PrimaryButtonStyle())
    }
}
