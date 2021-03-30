//
//  JsonLoader.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/15.
//

import Foundation
import SwiftUI

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
    encoder.outputFormatting = .prettyPrinted
    do {
        var str = try encoder.encode(data)
        
        print("encoder result1:\(str.base64EncodedString())")
        print("encoder result2:\(String(data: str, encoding: .utf8))")
        
        print(String(data: str, encoding: .utf8)!)
        print("abcd\ncba")
        
        
        let testString = "This is a test string\nabc"
        print(testString)
        let somedata = testString.data(using: String.Encoding.utf8)
        let backToString = String(data: somedata!, encoding: String.Encoding.utf8)
        print(backToString!)
        
        
    } catch {
        print("Error")
    }
}

struct JsonLoader_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
