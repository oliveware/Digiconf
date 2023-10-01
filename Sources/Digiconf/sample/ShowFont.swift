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
        HStack {
            Text("h:\(Int(config.haut)) - w:\(Int(config.large))")
                .padding(5)
                .font(config.font)
                .foregroundColor(config.fore)
                .background(config.mid)
        }.padding(10)
        .background(config.back)
        .border(config.bord, width: 3)
            
    }
}

struct ShowFont_Previews: PreviewProvider {
    static var previews: some View {
        GroupBox {
            VStack {
                ShowFont()
                
                ShowFont(
                    config:Digiconfig(30,40).colore([.green,.brown,.pink,.purple,.cyan]))
                ShowFont(
                    config:Digiconfig().scale(0.5))
                ShowFont(
                    config:Digiconfig().scale(1.5).colore([.red,.clear,.blue,.brown,.green,.gray]))
                ShowFont(
                    config:Digiconfig().size(20,20))
                ShowFont(
                    config:Digiconfig().scalefont(0.4))
            }.padding(0)
        }
    }
}
