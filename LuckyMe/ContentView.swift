//
//  ContentView.swift
//  LuckyMe
//
//  Created by Terje Moe on 07/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var pnr: String = ""
    // var nrArray = [String]()
    var body: some View {
        VStack {
            Text("Person Nr:").font(.largeTitle)
            
            TextField("Fødselsnummer 11 siffer ",text: $pnr)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black)
            
            Button{
                
             mod11()
                
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
    
    func mod11(){
       let str = pnr
        var myArray:[String] = []
        // let index = str.index(str.startIndex, offsetBy: 0)

        for (index, element) in str.enumerated(){
            print("Item \(index): \(element)")
            var pnr1 = "pnr" + String(index)
            myArray.append(String(element))
           
        }
   let a = myArray[1]
       
    }
}

    #Preview {
    ContentView()
}
