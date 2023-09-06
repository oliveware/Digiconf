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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(config.font)
    }
}

struct ShowFont_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ShowFont()
            
            ShowFont(
                config:Digiconfig(50,30))
            ShowFont(
                config:Digiconfig().scale(0.5))
        }
    }
}
