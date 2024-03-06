//
// Created for ShareLink Demo
// by Stewart Lynch on 2022-09-26
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct BasicsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                // Basic Links
                Spacer()
            }
            .font(.title)
            .padding()
            .navigationTitle("ShareLinks Basics")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicsView()
    }
}
















