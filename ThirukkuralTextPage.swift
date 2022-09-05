//
//  ThirukkuralTextPage.swift
//  ThirukkuralApp
//
//  Created by Arun_Skyraan on 01/09/22.
//

import SwiftUI
struct Kural{
    var line1 : String
    var line2 : String
}
struct ThirukkuralTextPage: View {
//    @State var kadavulvazhthu = ["அகர முதல எழுத்தெல்லாம் ஆதி பகவன் முதற்றே உலகு", "கற்றதனால் ஆய பயனென்கொல் வாலறிவன் நற்றாள் தொழாஅர் எனின்", "மலர்மிசை ஏகினான் மாணடி சேர்ந்தார் நிலமிசை நீடுவாழ் வார்", "வேண்டுதல்வேண் டாமை இலானடி சேர்ந்தார்க்கு யாண்டும் இடும்பை இல", "இருள்சேர் இருவினையும் சேரா இறைவன் பொருள்சேர் புகழ்புரிந்தார் மாட்டு"]
//    @State var vansirappu = ["வானின் றுலகம் வழங்கி வருதலால் தானமிழ்தம் என்றுணரற் பாற்று", "துப்பார்க்குத் துப்பாய துப்பாக்கித் துப்பார்க்குத் துப்பாய தூஉ மழை", "விண்இன்று பொய்ப்பின் விரிநீர் வியனுலகத்து உள்நின் றுடற்றும் பசி", "ஏரின் உழாஅர் உழவர் புயல்என்னும் வாரி வளங்குன்றிக் கால்", "கெடுப்பதூஉம் கெட்டார்க்குச் சார்வாய்மற் றாங்கே எடுப்பதூஉம் எல்லாம் மழை"]
//    @State var neertharperumai = ["ஒழுக்கத்து நீத்தார் பெருமை விழுப்பத்து வேண்டும் பனுவல் துணிவு", "துறந்தார் பெருமை துணைக்கூறின் வையத்து இறந்தாரை எண்ணிக்கொண் டற்று", "இருமை வகைதெரிந் தீண்டறம் பூண்டார் பெருமை பிறங்கிற் றுலகு", "உரனென்னுந் தோட்டியான் ஓரைந்தும் காப்பான் வரனென்னும் வைப்பிற்கோர் வித்து", "ஐந்தவித்தான் ஆற்றல் அகல்விசும்பு ளார்கோமான் இந்திரனே சாலுங் கரி"]
    
    @State var Thirukkural : [String]
    
    
    var body: some View {
        ZStack{
            
            VStack{
                List{
                
                    ForEach(0..<Thirukkural.count,id:\.self){ index in
                        let item = Thirukkural[index]

                        Text("\(index + 1)  \(item)")

//                    .padding()
//                    .frame(width: 300, height: 60, alignment: .center)
//                    .foregroundColor(.blue)
//                    .font(.system(size: 15))
//                    .border(Color.blue, width: 2)
//                    .background()
                }
                    .padding()
//                    .frame(width: 300, height: 5, alignment: .center)
                    .foregroundColor(.blue)
                    .font(.system(size: 12))
//                    .border(Color.blue, width: 2)
            }
        }
    }
    }
}

struct ThirukkuralTextPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirukkuralTextPage(Thirukkural: ["அகர முதல எழுத்தெல்லாம் ஆதி பகவன் முதற்றே உலகு", "கற்றதனால் ஆய பயனென்கொல் வாலறிவன் நற்றாள் தொழாஅர் எனின்", "மலர்மிசை ஏகினான் மாணடி சேர்ந்தார் நிலமிசை நீடுவாழ் வார்", "வேண்டுதல்வேண் டாமை இலானடி சேர்ந்தார்க்கு\n யாண்டும் இடும்பை இல", "இருள்சேர் இருவினையும் சேரா இறைவன்\n பொருள்சேர் புகழ்புரிந்தார் மாட்டு"])
    }
}
