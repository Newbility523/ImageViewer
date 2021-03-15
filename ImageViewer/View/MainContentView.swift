//
//  MainContentView.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/15.
//

import SwiftUI

struct MainContentView: View {
    @Binding var isShowSetting: Bool
    var body: some View {
        HStack {
            ImageDetailView()
            
            VStack {
                CatalogView()
                
                FileListView()
            }.padding()
            
            
            Button("Setting") {
                self.isShowSetting = true
            }.padding()
        }.frame(width: 800, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct MainContentView_Previews: PreviewProvider {
    @State static var temp = true

    static var previews: some View {
        MainContentView(isShowSetting:$temp)
    }
}
