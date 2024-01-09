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
   
    
    var body: some View {
        VStack {
            Text("Person Nr:").font(.largeTitle)
            
            TextField("Fødselsnummer 11 siffer ",text: $pnr)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black)
            
            Button{
                
            fillArray()
            arrToVar()
                
           } label: {
                Text("Modulus 11")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                
            }
            Text("Pnr:\(pnr) \(pnr)")
        }
        .padding()
    }
    
    func fillArray(){
        let str = pnr
              
        for (index, element) in str.enumerated(){
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
        let a10 = Int(myArray[9])
        let a11 = Int(myArray[10])

        // Utregning første kontrollsiffer til modulus 11
        
        var fks1 = a1! * 3
        var fks2 = a2! * 7
        var fks3 = a3! * 6
        var fks4 = a4! * 1
        var fks5 = a5! * 8
        var fks6 = a6! * 9
        var fks7 = a7! * 4
        var fks8 = a8! * 5
        var fks9 = a9! * 2
        var sum1 = fks1 + fks2 + fks3 + fks4 + fks5 + fks6 + fks7 + fks8 + fks9
        var sum2 = sum1 / 11
        var sum3 = 11 * sum2
        var sum4 = sum1 - sum3
        var ks1 = 11 - sum4
        if ks1 == 11 {
            ks1 = 0
        }
        print(ks1)
    }
 }

 
#Preview {
    ContentView()
}
