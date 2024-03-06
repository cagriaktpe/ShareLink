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
                ShareLink(item: "String Item")
                ShareLink(item: URL(string: "https://www.apple.com")!)
                ShareLink("Some Text", item: URL(string: "https://www.apple.com")!)
                ShareLink(Text("\(Image(systemName: "star.fill")) - with SFImage"), item: URL(string: "https://www.apple.com")!)
                ShareLink(item: "Item Subject - No Preview", subject: Text("Subject")) {
                    Text("Title")
                }
                ShareLink(item: "Item Subject Message", subject: Text("Subject"), message: Text("The message")) {
                    Text("Title")
                }
                ShareLink(item: URL(string: "https://www.apple.com")!, subject: Text("Subject"), message: Text("The message")) {
                    Text("Title")
                }
                ShareLink(item: URL(string: "https://www.apple.com")!, subject: Text("Subject"), message: Text("The message")) {
                    HStack {
                        Text("Title")
                        Spacer()
                        Image(systemName: "star.fill")
                    }
                }
                Spacer()
            }
            .font(.title)
            .padding()
            .navigationTitle("ShareLinks Basics")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    ShareLink(item: "Item to Share")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BasicsView()
    }
}
















