//
//  JsonLoader.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/15.
//

import Foundation

var curSetting: SettingCfg? = Load("AppSetting.json")

protocol Initializable : Decodable {
  init()
}

func Load<T: Decodable>(_ fileName: String) -> T? {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    print("file: \(file)")
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        print("Couldn't parse \(fileName) as \(T.self):\n\(error)")
        print("Using default")
//        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
//        var temp = T(from: decoder)
        return nil
    }
}

func Save(data: SettingCfg) {
    let encoder = JSONEncoder()
    do {
        var str = try encoder.encode(data)
        print("encoder result:\(str.base64EncodedString())")
    } catch {
        print("Error")
    }
}
