//
//  ContentView.swift
//  ThreadingAsyncImageSwiftUI
//
//  Created by Ali serkan Boyracı  on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                // using async
                AsyncImage(url: URL(string:  "https://images.pexels.com/photos/3774243/pexels-photo-3774243.jpeg?cs=srgb&dl=pexels-james-wheeler-3774243.jpg&fm=jpg")!) { image in
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView()
                }

                
            
                List(superHeroArray) {superhero in
                    Text(superhero.name)
                        .font(.title3)
                        .foregroundColor(.blue)
                    
                }
            }.navigationTitle(Text("Superhero Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
