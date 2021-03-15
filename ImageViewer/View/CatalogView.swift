//
//  CatalogView.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/15.
//

import SwiftUI

struct CatalogView: View {
    var body: some View {
        HStack {
            Button("Direct1"){ }
            Button("\\Direct2"){ }
            Button("\\Direct3"){ }
            Button("\\Direct4"){ }
            Button("\\Direct5"){ }
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
