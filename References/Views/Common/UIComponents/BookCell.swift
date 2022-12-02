//
//  BookCell.swift
//  References
//
//  Created by Gabriel Puppi on 01/12/22.
//

import SwiftUI

import SwiftUI

struct BookCell: View {
    
    let title: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12).foregroundColor(Color("tabAccent"))
            Text(title)
                .font(.footnote)
                .padding(.top, 80)
                .padding([.leading, .trailing])
                
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        BookCell(title: "Hello world")
    }
}
