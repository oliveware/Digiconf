//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 06/09/2023.
//

import SwiftUI

struct ShowFont: View {
    
    var config = Digiconfig()
    
    var body: some View {
        Text("h:\(Int(config.haut)) - w:\(Int(config.large))")
            .font(config.font)
    }
}

struct ShowFont_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ShowFont()
            
            ShowFont(
                config:Digiconfig(30,40))
            ShowFont(
                config:Digiconfig().scale(0.5))
            ShowFont(
                config:Digiconfig().scale(0.4))
            ShowFont(
                config:Digiconfig().size(10,10))
        }
    }
}
