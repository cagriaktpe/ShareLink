//
//  WineView.swift
//  ShareLink Demo
//
//  Created by Stewart Lynch on 2022-09-26.
//

import SwiftUI


struct WineView: View {
    let wine = Wine.sample
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                Text(wine.variety).font(.largeTitle).bold()
                Text(wine.name).font(.title)
                Text("\(wine.flag) \(wine.region)").italic()
                Text(wine.localPrice)
                Text("⭐️ \(wine.rating)")
                wine.labelImage
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 250)
                Spacer()
            }
            .navigationTitle(wine.winery)
        }
    }
}

struct WineView_Previews: PreviewProvider {
    static var previews: some View {
        WineView()
    }
}
