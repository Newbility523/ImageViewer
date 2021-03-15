//
//  ContentView.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/11.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowSetting = false
    var body: some View {
        if !isShowSetting {
            MainContentView(isShowSetting: $isShowSetting)
              .frame(maxWidth: .infinity, maxHeight: .infinity)
               .transition(AnyTransition.move(edge: .leading)).animation(.default)
        }
        
        if isShowSetting {
            SettingView(isShowSetting: $isShowSetting)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .transition(AnyTransition.move(edge: .trailing)).animation(.default)
        }
    }
}

class ImageData : Identifiable {
    var path: String
    var name: String
    var isShow = true
    var id = UUID()
    
    init(_ name: String) {
        self.name = name
        self.path = ""
    }
}

func Datas() -> [ImageData]
{
    var result: [ImageData] = []
    for index in 1...10 {
        result.append(ImageData("image name \(index)"))
    }
    
    return result
}

func CreateItems() {
    for index in 1...5 {
        Button("TEST \(index)") {}
    }
}

func ShowAlert() -> Alert
{
    print("Show Alert")
    return Alert(title: Text("Hello SwiftUI!"),
          message: Text("This is some detail message"),
          dismissButton: .default(Text("OK")))
}

struct ContentView_Previews: PreviewProvider {
    @State static var temp = true
    static var previews: some View {
        return Group {
//            ContentView(isShowSetting: temp)
            ContentView()

        }
    }
}
