//
//  HanoiList.swift
//  Demo_AppleApplication
//
//  Created by Nguyen Van Thanh on 07/08/2022.
//

import SwiftUI

struct HanoiList: View {
    @State private var showFavoritesOnly = false
    
    var filteredHanoi: [Hanoi] {
        hanois.filter { hanoi in
            (!showFavoritesOnly || hanoi.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List(filteredHanoi){ hanoi in
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(filteredHanoi) { hanoi in
                    NavigationLink {
                        HanoiDetail(hanoi: hanoi)
                    } label: {
                        HanoiRow(hanoi: hanoi)
                    }

                }
            }
            .navigationTitle("Hanoi Capital")
        }
    }
}

struct HanoiList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["Iphone 13 (2nd generation)", "Iphone 13 Pro Max"], id: \.self) { deviceName in
        HanoiList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
