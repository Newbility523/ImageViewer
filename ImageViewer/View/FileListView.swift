//
//  FileListView.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/15.
//

import SwiftUI

struct FileListView: View {
    let datas = Datas()

    var body: some View {
//        Button("button1") {
//            print("item\(item)")
//            item.isShow = false
//         
//
//        }.opacity(item.isShow ? 1 : 0)
        
        List(datas) {
            let name = $0.name

            Group {
                //@State var isShow1 = false
//                    @State var isShow2 = true
                Text(name).padding()
                Spacer()
//                    Button("button1", action: {isShow2 = true})
//                        .sheet(isPresented: &isShow1, content: {
//
//                        })
            }.background(Color.gray)
            
            FileItem()
          
        }
    }
}

struct FileListView_Previews: PreviewProvider {
    static var previews: some View {
        FileListView()
    }
}
