//
//  ContentView.swift
//  Demo_AppleApplication
//
//  Created by Nguyen Van Thanh on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HanoiList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
