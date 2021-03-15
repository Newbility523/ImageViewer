//
//  Setting.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/15.
//

import Foundation

struct SettingCfg : Hashable, Codable {
    var projectPath: String
    var rawResourcePath: String
    var svnUser: String
    var svnPassword: String
    var svnRepo: String
    var svnVersion: Int
    
    var markList: [String]
    
    init() {
        projectPath = "Document\\"
        rawResourcePath = "Document\\"
        svnUser = "admin"
        svnPassword = "admin"
        svnRepo = "svn:n3d"
        svnVersion = -1
        markList = ["abc", "cbdkkkk"]
    }
}
