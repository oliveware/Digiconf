//
//  SwiftUIView.swift
//  
//
//  Created by Herve Crespel on 27/09/2023.
//

import SwiftUI

struct ShowDV: View {
    
    var value: Int = 7
    var base: Int = 12
    var power: Int = -1
    
    var body: some View {
        Text("\(Digivalue(value,base,power).double)").font(.title)
    }
}

#Preview {
    GroupBox {
        VStack(spacing:10) {
            ShowDV()
            ShowDV(value:125)
        }
    }
}
