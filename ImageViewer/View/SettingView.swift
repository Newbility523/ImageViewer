//
//  Setting.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/15.
//

import SwiftUI

struct SettingView: View {
    @Binding var isShowSetting: Bool
    var setting = SettingCfg()
    var body: some View {
        Button("Return") {
            var useName = FileManager.NSUserName()
            self.isShowSetting = false
            print("setting: \(setting)")
            Save(data: setting)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    @State static var temp = true

    static var previews: some View {
        SettingView(isShowSetting: $temp)
    }
}
