//
//  TestFil.swift
//  LuckyMe
//
//  Created by Terje Moe on 09/01/2024.
//

import SwiftUI

struct TestFil: View {
    var yourNumber = 9
    var body: some View {
        if yourNumber % 2 == 0 {
          // Even Number
            Text("Even")
        } else {
          // Odd Number
            Text("odd")
        }
        
    }
    
   
  
    
    
}

#Preview {
    TestFil()
}
