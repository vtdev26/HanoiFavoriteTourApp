//
//  HanoiDetail.swift
//  Demo_AppleApplication
//
//  Created by Nguyen Van Thanh on 07/08/2022.
//

import SwiftUI

struct HanoiDetail: View {
    
    var hanoi: Hanoi
    
    var body: some View {
        ScrollView{
            VStack{
                MapView(coordinate: hanoi.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(width: 400, height: 470, alignment: .top)
                    .border(.green)
                    .shadow(color: .gray, radius: 2, x: 2, y: 2)
                CircleImage(image: hanoi.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(hanoi.name)
                        .font(.title)
                        .foregroundColor(.red)
                    HStack {
                        Text(hanoi.park)
                            .font(.subheadline)
                            .foregroundColor(.green)
                        Text(hanoi.city)
                            .font(.subheadline)
                            .foregroundColor(.green)
                    }
                }
                .padding()
            }
            .navigationTitle(hanoi.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HanoiDetail_Previews: PreviewProvider {
    static var previews: some View {
        HanoiDetail(hanoi: hanois[0])
    }
}
