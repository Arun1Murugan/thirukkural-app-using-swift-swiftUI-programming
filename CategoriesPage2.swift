//
//  CategoriesPage2.swift
//  ThirukkuralApp
//
//  Created by Arun_Skyraan on 01/09/22.
//

import SwiftUI

struct CategoriesPage2: View {
    
    @State var Categories : [String]
    
//    @State var aramCategories = ["கடவுள் வாழ்த்து", "வான்சிறப்பு", "நீத்தார் பெருமை"]
//    @State var porulCategories = ["இறைமாட்சி", "கல்வி", "கல்லாமை"]
//    @State var inbamCategories = ["தகை அணங்குறுத்தல்", "குறிப்பறிதல்", "புணர்ச்சி மகிழ்தல்"]
    @State var kadavulvazhthu = ["அகர முதல எழுத்தெல்லாம் ஆதி\n பகவன் முதற்றே உலகு", "கற்றதனால் ஆய பயனென்கொல் வாலறிவன்\n நற்றாள் தொழாஅர் எனின்", "மலர்மிசை ஏகினான் மாணடி சேர்ந்தார்\n நிலமிசை நீடுவாழ் வார்", "வேண்டுதல்வேண் டாமை இலானடி சேர்ந்தார்க்கு\n யாண்டும் இடும்பை இல", "இருள்சேர் இருவினையும் சேரா இறைவன்\n பொருள்சேர் புகழ்புரிந்தார் மாட்டு"]
    @State var vansirappu = ["வானின் றுலகம் வழங்கி வருதலால்\n தானமிழ்தம் என்றுணரற் பாற்று", "துப்பார்க்குத் துப்பாய துப்பாக்கித் துப்பார்க்குத்\n துப்பாய தூஉ மழை", "விண்இன்று பொய்ப்பின் விரிநீர் வியனுலகத்து\n உள்நின் றுடற்றும் பசி", "ஏரின் உழாஅர் உழவர் புயல்என்னும்\n வாரி வளங்குன்றிக் கால்", "கெடுப்பதூஉம் கெட்டார்க்குச் சார்வாய்மற் றாங்கே\n எடுப்பதூஉம் எல்லாம் மழை"]
    @State var neertharperumai = ["ஒழுக்கத்து நீத்தார் பெருமை விழுப்பத்து\n வேண்டும் பனுவல் துணிவு", "துறந்தார் பெருமை துணைக்கூறின் வையத்து\n இறந்தாரை எண்ணிக்கொண் டற்று", "இருமை வகைதெரிந் தீண்டறம் பூண்டார்\n பெருமை பிறங்கிற் றுலகு", "உரனென்னுந் தோட்டியான் ஓரைந்தும் காப்பான்\n வரனென்னும் வைப்பிற்கோர் வித்து", "ஐந்தவித்தான் ஆற்றல் அகல்விசும்பு ளார்கோமான்\n இந்திரனே சாலுங் கரி"]
    
    func GetCategory(index : Int) -> [String]{
        if index == 0 {
            return kadavulvazhthu
        } else if index == 1{
            return vansirappu
        }else {
            return neertharperumai
        }
    }
    
    
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            VStack{
                Text("")
                
                ForEach(0..<Categories.count,id:\.self){ index in
                    let item = Categories[index]
                NavigationLink(destination: {
                    ThirukkuralTextPage(Thirukkural : GetCategory(index:index))
                }, label:{
                    Text("\(item)")
                })
                .padding()
                .frame(width: 350, height: 60, alignment: .center)
                .foregroundColor(.blue)
                .font(.system(size: 25))
                .border(Color.blue, width: 2)
                .background()
                }
                Spacer()
                
//                ForEach(Categories,id:\.self){ index in
//                    let i = GetCategory(inde)
//                    NavigationLink(destination: {
//
//                    }, label: {
//                        Text("\(index)")
//                            .frame(width: 330, height: 40, alignment: .leading)
//                            .foregroundColor(.blue)
//                            .font(.system(size: 20))
//                            .border(Color.blue, width: 2)
//                            .background()
//                    })
//            }
//        }
//                Spacer()

}
//            Spacer()
        }
        }
}

struct CategoriesPage2_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesPage2(Categories: ["கடவுள் வாழ்த்து", "வான்சிறப்பு", "நீத்தார் பெருமை"])
    }
}
