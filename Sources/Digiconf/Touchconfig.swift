//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 27/09/2023.
//

import SwiftUI

public struct Touchconfig: ButtonStyle {
    @Environment(\.isEnabled) private var isEnabled
    var config = Digiconfig()
    
    public init(_ conf:Digiconfig) {
        config = conf
    }
    
    public func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
            .frame(width: config.large, height: config.haut)
            .font(config.font)
            .padding(config.padding)
            .foregroundColor(configuration.isPressed ? config.press : config.fore)
            .background(isEnabled ? config.back : config.disabled)
        .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
        .cornerRadius(8)
    }
}

extension View {
    public func configTouch(_ config:Digiconfig ) -> some View {
        self.buttonStyle(Touchconfig(config))
    }
    public func parambar(_ cote:CGFloat) -> some View {
        let config = Digiconfig(cote,cote,10,.white,.clear,.gray )
        return configTouch(config)
    }
}

#Preview {
    VStack {
        Button("8"){}
            .configTouch(Digiconfig())
        Button(action:{}){Image(systemName: "trash")}
            .parambar(30)
    }.padding(10)
}
