//
//  ContentView.swift
//  swiftUai
//
//  Created by Weslley Tavares de Aguiar e Quadros on 17/06/19.
//  Copyright © 2019 Weslley Tavares de Aguiar e Quadros. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    var landmark: Landmark
    var body: some View {
        
        VStack(){
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300) //permitir que o conteúdo do mapa se estenda até a borda superior da tela
            
             CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
        VStack (alignment: .leading){
           
            Text(landmark.name)
                .font(.title)
            
            
            HStack {
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
              
            }
            
            }.padding()
            Spacer()
    }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
}
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
