//
//  ContentView.swift
//  LuckyMe
//
//  Created by Terje Moe on 07/01/2024.
//

import SwiftUI

struct MainView: View {
    
    @State var myArray:[String] = []
    @State var pnr: String = ""
    @State var fodtStr: String = ""
    @State var fodtDato: String = ""
    @State var endDate: String = ""
    @State var starSign: String = ""
    @State var fAar: Int = 0
    @State var fMnd: Int = 0
    @State var fDay: Int = 0
    @State var kjonn: String = "Tanya"
    @State var bilde: String = "Family"
    @State var passControl: Bool = false
    @State var kont1: Int = 0
    @State var kont2: Int = 0
    @State var bAar: String = ""
    @State var bMnd: String = ""
    @State var bDay: String = ""
    @State var isValidDate: Bool = true
    @State var chZodiac: Int = 0
    @State var chZodiacText: String = ""
    @State var chElementText: String = ""
    @State var chElement: Int = 0
    @State var nextBday: Int = 0
    @State var starSignIsTapped: Bool = false
    @State var chineseZodiacIsTapped: Bool = false
    @State var isThirteenStarSigns: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 0) {
                HStack {
                    Spacer()
                    VStack {
                        Image(isValidDate ? starSign : "Bomb2")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .scaledToFit()
                            .cornerRadius(25)
                            .onTapGesture {
                                starSignIsTapped = true
                            }
                        Text(isValidDate ? starSign.capitalized : "Ugyldig Dato")
                            .font(.headline)
                            .bold()
                    }
                    .padding()
                    Spacer()
                    VStack {
                        
                        Image(isValidDate ? chZodiacText : "Bomb2")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .scaledToFit()
                            .cornerRadius(25)
                            .onTapGesture {
                                chineseZodiacIsTapped = true
                            }
                        Text(isValidDate ? chElementText + "  "  + chZodiacText :  "失效日期")
                            .font(.headline)
                            .bold()
                    }
                    .padding()
                    Spacer()
                }
                
                TextField("Person Nr.",text: $pnr)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .border(Color.black)
                    .padding(.leading,110)
                    .padding(.trailing,110)
                    .padding(.bottom,10)
                    .keyboardType(.numberPad)
                    .onTapGesture {
                        pnr = ""
                    }
                    .onChange(of: pnr.count) {
                        if pnr.count == 11 {
                            hideKeyboard()
                            fillArray()
                            arrToVar()
                            dato()
                            alderKlasse()
                            isThirteenStarSigns ? zodiac13() : zodiac()
                            chinese_zodiac()
                            chinese_element()
                            passControl = isValidDate ? true : false
                        } else {
                            passControl = false
                            bilde = "Family"
                            starSign = ""
                            chZodiacText = ""
                            chElementText = ""
                        }
                    }
                
                Text(!passControl ? "" : "Kontrollsiffer: \(kont1)\(kont2)")
                    .foregroundColor(.green)
                    .bold()
                
                Text(!passControl ? "" : "Dette er en \(kjonn)")
                    .padding(.top,10)
                Text(!passControl ? "" : "Alder: \(fAar) År ,\(fMnd) Måneder og \(fDay) Dager")
                Text(!passControl ? "" : "\(nextBday) Dager til (\(fAar + 1) Års dagen din!)")
            }.navigationDestination(isPresented: $starSignIsTapped) {
                StarSignDetailView(starSign: $starSign, isThirteenStarSigns: $isThirteenStarSigns) }
            
            .navigationDestination(isPresented: $chineseZodiacIsTapped) {
                ChineseZodiacDetailView(chZodiacText: $chZodiacText, chElementText: $chElementText)
            }
            .padding()
            
            
            
            if pnr.count == 0 {
              
                Circle()
                    .frame(width: 25, height: 25)
                    .foregroundColor(isThirteenStarSigns ? .green : .red)
                    .onTapGesture{
                        isThirteenStarSigns.toggle()
                    }
                
                Text(isThirteenStarSigns ? "Med Trettende Stjernetegn" : "Med 12 Stjernetegn")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.blue)
                    
            }
                Image(isValidDate ? bilde : "Bomb")
                    .resizable()
                    .frame(width: 350, height: 300)
                    .scaledToFit()
                    .cornerRadius(25)
           
        }
    }
}
#Preview {
    MainView()
}

