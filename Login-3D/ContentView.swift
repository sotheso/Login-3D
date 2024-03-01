//
//  ContentView.swift
//  Login-3D
//
//  Created by Sothesom on 07/12/1402.
//

import SplineRuntime
import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            Login3DView()
                .frame (height: 500)
                .ignoresSafeArea ()
            VStack(spacing: 12){
                Text("Start App" )
                    .font(.title.bold())
                Text("Stay up to date with all your social media platforms in one simple app.")
            }
            .foregroundStyle(.secondary)
            .padding(.horizontal)
            Spacer ()
            Button("Get Started") {
                // Button action code goes here
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
                
            Spacer ()
        }
    }
}

#Preview {
    ContentView()
}

struct Login3DView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/3CQZM2qOD0rZSHNgyGHJ/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url)
    }
}


//help : https://www.youtube.com/watch?v=kYL0Ef3XKO0&t=1s
