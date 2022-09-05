//
//  ContentView.swift
//  Shared
//
//  Created by Arun_Skyraan on 30/08/22.
//

import SwiftUI

struct ContentView: View {
    @State var isGo = false
    @State var aram = ["பாயிரம்", "இல்லறவியல்", "துறவறவியல்"]
    @State var porul = ["அரசியல்", "அங்கவியல்", "ஒழிபியல்"]
    @State var inbam = ["களவியல்", "கற்பியல்"]
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
        VStack{
    
        Text("திருக்குறள்")
                .fontWeight(.heavy)
                .frame(width: 340, height: 50, alignment: .center)
                .font(.system(size: 35))
                .foregroundColor(.white)
//                .padding()
            Image("Thiruvalluvar")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 450, alignment: .center)
//                .clipShape(Circle())
//                .padding()
            NavigationLink(destination: {
                CategoriesPage(Category: aram)
            }, label: {
                Text("அறம்")
                    .foregroundColor(.blue)
                    .fontWeight(.heavy)
                    .font(.system(size: 25))
                    .frame(width: 180, height: 60, alignment: .center)
                    .foregroundColor(.purple)
                    .background(Color.white)
                    .clipShape(Capsule())

            })
            
            NavigationLink(destination: {
                CategoriesPage(Category: porul)
            }, label: {
                Text("பொருள்")
                    .foregroundColor(.blue)
                    .fontWeight(.heavy)
                    .font(.system(size: 25))
                    .frame(width: 180, height: 60, alignment: .center)
                    .foregroundColor(.purple)
                    .background(Color.white)
                    .clipShape(Capsule())

            })
            
            NavigationLink(destination: {
                CategoriesPage(Category: inbam)
            }, label: {
                Text("இன்பம்")
                    .foregroundColor(.blue)
                    .fontWeight(.heavy)
                    .font(.system(size: 25))
                    .frame(width: 180, height: 60, alignment: .center)
                    .foregroundColor(.purple)
                    .background(Color.white)
                    .clipShape(Capsule())

            })
//            Button(action: {
//                isGo = true
//                print(isGo)
//            }, label: {
//                            })
            
//            .padding()
//            Button(action: {
//                isGo = true
//                print(isGo)
//            }, label: {
//                Text("பொருள்")
//                    .foregroundColor(.blue)
//                    .fontWeight(.heavy)
//                    .font(.system(size: 25))
//            })
//            .frame(width: 180, height: 60, alignment: .center)
//            .foregroundColor(.purple)
//            .background(Color.white)
//            .clipShape(Capsule())
////            .padding()
//            Button(action: {
//                isGo = true
//                print(isGo)
//            }, label: {
//                Text("இன்பம்")
//                    .foregroundColor(.blue)
//                    .fontWeight(.heavy)
//                    .font(.system(size: 25))
//            })
//            .frame(width: 180, height: 60, alignment: .center)
//            .foregroundColor(.purple)
//            .background(Color.white)
//            .clipShape(Capsule())
//            .padding()
//            NavigationLink(destination: {
//
//            }, label: {
//                Text("இன்பம்")
//            })
            Spacer()
            
        }
        }
//        .background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
