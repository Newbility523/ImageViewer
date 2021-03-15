//
//  ImageDetailView.swift
//  ImageViewer
//
//  Created by Huangzhuofu on 2021/3/15.
//

import SwiftUI

struct ImageDetailView: View {
//    @State var path: String
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Image("ExampleImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200.0, height: 250.0, alignment: .center)
                .border(Color.blue, width: 3.0)
                .clipShape(Circle())
            Text("Name:").font(.title).alignmentGuide(.leading, computeValue: { dimension in
                dimension[.leading] - 10
            })
            Text("Name:").font(.body).alignmentGuide(.leading, computeValue: { dimension in
                dimension[.leading] - 10
            })
            Text("Name:").font(.body).alignmentGuide(.leading, computeValue: { dimension in
                dimension[.leading] - 10
            })
            Text("Name:").font(.body).alignmentGuide(.leading, computeValue: { dimension in
                dimension[.leading] - 10
            })
        }
    }
}

struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView()
    }
}
