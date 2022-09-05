//
//  CategoriesPage.swift
//  ThirukkuralApp
//
//  Created by Arun_Skyraan on 01/09/22.
//

import SwiftUI

struct CategoriesPage: View {
    @State var Category : [String]
    @State var aramCategories = ["கடவுள் வாழ்த்து", "வான்சிறப்பு", "நீத்தார் பெருமை"]
    @State var porulCategories = ["இறைமாட்சி", "கல்வி", "கல்லாமை"]
    @State var inbamCategories = ["தகை அணங்குறுத்தல்", "குறிப்பறிதல்", "புணர்ச்சி மகிழ்தல்"]
    func GetCategory(index : Int) -> [String]{
        if index == 0 {
            return aramCategories
        } else if index == 1{
            return porulCategories
        }else {
            return inbamCategories
        }
    }
    var body: some View {
//        NavigationView{
            ZStack(){
                Color.gray
                    .ignoresSafeArea()
                VStack(spacing : 10){
                    Text("அதிகாரங்கள்")
                        .frame(width: 350, height: 60, alignment: .center)
                        .font(.system(size: 32))
                        .foregroundColor(.white)
                    
                    ForEach(0..<Category.count,id:\.self){ index in
                        let item = Category[index]
                    NavigationLink(destination: {
                        CategoriesPage2(Categories: GetCategory(index:index))
                    }, label:{
                        Text("\(item)")
        
                    })
                    .padding()
                    .frame(width: 350, height: 60, alignment: .center)
                    .foregroundColor(.blue)
                    .font(.system(size: 25))
                    .border(Color.blue, width: 2)
                    .background()
//                    .cornerRadius(20)
                }
                    Spacer()
            }
//                .navigationTitle("அதிகாரங்கள்")
                Spacer()
        }
        
    }
}

struct CategoriesPage_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesPage(Category : ["பாயிரம்", "இல்லறவியல்", "துறவறவியல்"])
    }
}
