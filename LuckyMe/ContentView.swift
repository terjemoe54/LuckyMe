//
//  ContentView.swift
//  LuckyMe
//
//  Created by Terje Moe on 07/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var myArray:[String] = []
    @State var pnr: String = ""
    @State var fodtStr: String = ""
    @State var endDate: String = ""
    @State var fAar: Int = 0
    @State var fMnd: Int = 0
    @State var fDay: Int = 0
    @State var kjonn: String = "Tanya"
    @State var bilde: String = "tanya"
    
    var body: some View {
        VStack {
            Text("Person Nr:").font(.largeTitle)
            
            TextField("Fødselsnummer 11 siffer ",text: $pnr)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black)
                .padding(.leading,75).keyboardType(.numberPad)
            
            Button{
                if pnr.count == 11 {
                    fillArray()
                    arrToVar()
                    dato()
                    alderKlasse()
                }
                
            } label: {
                Text("Go")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
            }
            Text("Dette er en \(kjonn)")
            Text("Alder: \(fAar) År ,\(fMnd) Måneder og \(fDay) Dager")
        }
        .padding()
        Image(bilde).resizable()
            .resizable()
            .aspectRatio(contentMode: .fit)
        
    }
    
    func alderKlasse(){
        // gir textfeltet kønn og beskrivelse (eks. kvinne mann ung gutt ung jente)
        
        if kjonn == "F" {
            
            if fAar < 13 {kjonn = "Ung Jente"; bilde = "ung_jente"
            } else if fAar < 20  {kjonn = "Tennårings Jente"; bilde = "teen_jente"
            } else if fAar < 55  {kjonn = "Kvinne"; bilde = "dame"
            } else if fAar >= 55 {kjonn = "Gammel Kjærring"; bilde = "gammel_dame"
            }
        } else if kjonn == "M"{
            if fAar < 13 {kjonn = "Ung Gutt"; bilde = "ung_gutt"
            } else if fAar < 20  {kjonn = "Tennårings Gutt"; bilde = "teen_gutt"
            } else if fAar < 55  {kjonn = "Mann"; bilde = "mann"
            } else if fAar >= 55 {kjonn = "Gammel Gubbe"; bilde = "gammel_gubbe"
            }
        }
    }
    
    func dato() {
      // Regner ut fra og tildato for alder
        let year = Calendar.current.component(.year, from: Date())
        let month = Calendar.current.component(.month, from: Date())
        let day = Calendar.current.component(.day, from: Date())
        
        let fmt = ISO8601DateFormatter()
        let date1 = fmt.date(from: fodtStr)!
        let endDate = String("\(year)-\(month)-\(day)T00:00:00+0000")
        let date2 = fmt.date(from: endDate)!
        let diffs = Calendar.current.dateComponents([.year,.month,.day], from: date1, to: date2)
        
        fAar = diffs.year!
        fMnd = diffs.month!
        fDay = diffs.day!
      }
    
    func fillArray(){
        // Fyller arrayen med tall fra strengen pnr
        myArray.removeAll()
        let str = pnr
        
        for (_, element) in str.enumerated(){
            myArray.append(String(element))
        }
    }
    
    
    func arrToVar() {
        // Konverterer alle tall fra arrayen til variabler av type Integer
        let a1 = Int(myArray[0])
        let a2 = Int(myArray[1])
        let a3 = Int(myArray[2])
        let a4 = Int(myArray[3])
        let a5 = Int(myArray[4])
        let a6 = Int(myArray[5])
        let a7 = Int(myArray[6])
        let a8 = Int(myArray[7])
        let a9 = Int(myArray[8])
        
        // Lager string med fødselsdato for utregning
        let fnaar = String("\(a5!)\(a6!)")
        if Int(fnaar)! > 24 {
            fodtStr = String("19\(a5!)\(a6!)-\(a3!)\(a4!)-\(a1!)\(a2!)T00:00:00+0000")
        } else {
            fodtStr = String("20\(a5!)\(a6!)-\(a3!)\(a4!)-\(a1!)\(a2!)T00:00:00+0000")
        }
       
        let yourNumber = Int(a9!)
        // var yourNumber = 9
        if yourNumber % 2 == 0 {
            // Even Number
            kjonn = "F"
        } else {
            // Odd Number
            kjonn = "M"
        }
        // Utregning første kontrollsiffer til modulus 11
        let fks1 = a1! * 3
        let fks2 = a2! * 7
        let fks3 = a3! * 6
        let fks4 = a4! * 1
        let fks5 = a5! * 8
        let fks6 = a6! * 9
        let fks7 = a7! * 4
        let fks8 = a8! * 5
        let fks9 = a9! * 2
        let sum1 = fks1 + fks2 + fks3 + fks4 + fks5 + fks6 + fks7 + fks8 + fks9
        let sum2 = sum1 / 11
        let sum3 = 11 * sum2
        let sum4 = sum1 - sum3
        var ks1 = 11 - sum4
        if ks1 == 11 {
            ks1 = 0
        }
        // Utregning andre kontrollsiffer til modulus 11
        let sks1 = a1! * 5
        let sks2 = a2! * 4
        let sks3 = a3! * 3
        let sks4 = a4! * 2
        let sks5 = a5! * 7
        let sks6 = a6! * 6
        let sks7 = a7! * 5
        let sks8 = a8! * 4
        let sks9 = a9! * 3
        let sks10 = ks1 * 2
        let skSum1 = sks1 + sks2 + sks3 + sks4 + sks5 + sks6 + sks7 + sks8 + sks9 + sks10
        let skSum2 = skSum1 / 11
        let skSum3 = skSum2 * 11
        let skSum4 = skSum1 - skSum3
        let ks2 = 11 - skSum4
        if pnr.count < 11 {
            pnr = pnr + String(ks1) + String(ks2)
        }
    }
}

#Preview {
    ContentView()
}
