//
//  Utilities.swift
//  LuckyMe
//
//  Created by Terje Moe on 28/02/2024.
//

import Foundation
import SwiftUI

extension MainView {
    
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
        
        //**
        // Lager string fodtStr med fødselsdato for utregning
        // Lagre string fodtDato for kontroll av valid dato
        
        let fnaar = String("\(a5!)\(a6!)")
        chElement = a6 ?? 0
        if Int(fnaar)! > 24 {
            bAar = String("19\(a5!)\(a6!)")
            fodtDato = String("19\(a5!)\(a6!)-\(a3!)\(a4!)-\(a1!)\(a2!)")
            fodtStr = String("19\(a5!)\(a6!)-\(a3!)\(a4!)-\(a1!)\(a2!)T00:00:00+0000")
        } else {
            bAar = String("20\(a5!)\(a6!)")
            fodtDato = String("20\(a5!)\(a6!)-\(a3!)\(a4!)-\(a1!)\(a2!)")
            fodtStr = String("20\(a5!)\(a6!)-\(a3!)\(a4!)-\(a1!)\(a2!)T00:00:00+0000")
        }
        //**
        
        //*******
        // Birthdate for zodiac
        bDay = String("\(a1!)\(a2!)")
        bMnd = String("\(a3!)\(a4!)")
        //*******
        
        // Kaller funksjon for kjønn
        find_kjonn(a: a9!)
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
        kont1 = ks1
        kont2 = ks2
    }
    
    func find_kjonn(a:Int) {
        let yourNumber = Int(a)
        // var yourNumber = 9
        if yourNumber % 2 == 0 {
            // Even Number
            kjonn = "F"
        } else {
            // Odd Number
            kjonn = "M"
        }
    }
    
    func alderKlasse(){
        // gir textfeltet kønn og beskrivelse (eks. kvinne mann ung gutt ung jente)
        
        if kjonn == "F" {
            
            if fAar < 1 {kjonn = "Jente"; bilde = "F0"
            } else if fAar == 1 {kjonn = "Jente"; bilde = "F1"
            } else if fAar == 2  {kjonn = "Jente"; bilde = "F2"
            } else if fAar == 3  {kjonn = "Jente"; bilde = "F3"
            } else if fAar == 4  {kjonn = "Jente"; bilde = "F4"
            } else if fAar < 7 {kjonn = "Jente"; bilde = "F6"
            } else if fAar == 7 {kjonn = "Jente"; bilde = "F7"
            } else if fAar == 8 {kjonn = "Jente"; bilde = "F8"
            } else if fAar < 11 {kjonn = "Ung Jente"; bilde = "F10"
            } else if fAar == 11 {kjonn = "Ung Jente"; bilde = "F11"
            } else if fAar == 12 {kjonn = "Ung Jente"; bilde = "F12"
            } else if fAar == 13 {kjonn = "Tenåring Jente"; bilde = "F13"
            } else if fAar == 14 {kjonn = "Tennåring Jente"; bilde = "F14"
            } else if fAar == 15 {kjonn = "Tennåring Jente"; bilde = "F15"
            } else if fAar == 16 {kjonn = "Tennåring Jente"; bilde = "F16"
            } else if fAar == 18 {kjonn = "Tennåring Jente"; bilde = "F18"
            } else if fAar < 22 {kjonn = "Tennåring Jente"; bilde = "F21"
            } else if fAar < 24 {kjonn = "Ung Dame"; bilde = "F24"
            } else if fAar < 29 {kjonn = "Ung Dame"; bilde = "F25"
            } else if fAar < 36 {kjonn = "Voksen Dame"; bilde = "F35"
            } else if fAar < 41 {kjonn = "Voksen Dame"; bilde = "F40"
            } else if fAar < 46 {kjonn = "Voksen Dame"; bilde = "F44"
            } else if fAar < 51 {kjonn = "Voksen Dame"; bilde = "F50"
            } else if fAar < 59 {kjonn = "Voksen Dame"; bilde = "F55"
            } else if fAar < 70 {kjonn = "Voksen Dame"; bilde = "F60"
            } else if fAar < 80 {kjonn = "Voksen Dame"; bilde = "F70"
            } else if fAar < 90 {kjonn = "Voksen Dame"; bilde = "F80"
            } else if fAar < 100 {kjonn = "Voksen Dame"; bilde = "F90"
            } else if fAar >= 100 {kjonn = "Gammel Kjærring"; bilde = "F100"
            }
        } else if kjonn == "M"{
            if fAar < 1 {kjonn = "Liten Gutt"; bilde = "M0"
            } else if fAar == 1  {kjonn = "Liten Gutt"; bilde = "M1"
            } else if fAar == 2 {kjonn = "Liten Gutt"; bilde = "M2"
            } else if fAar == 3 {kjonn = "Liten Gutt"; bilde = "M3"
            } else if fAar == 4  {kjonn = "Liten Gutt"; bilde = "M4"
            } else if fAar < 7  {kjonn = "Gutt"; bilde = "M6"
            } else if fAar == 7  {kjonn = "Gutt"; bilde = "M7"
            } else if fAar == 8  {kjonn = "Gutt"; bilde = "M8"
            } else if fAar == 9  {kjonn = "Gutt"; bilde = "M9"
            } else if fAar == 10  {kjonn = "Gutt"; bilde = "M10"
            } else if fAar == 11  {kjonn = "Gutt"; bilde = "M11"
            } else if fAar == 12  {kjonn = "Gutt"; bilde = "M12"
            } else if fAar == 13  {kjonn = "Tennåring Gutt"; bilde = "M13"
            } else if fAar == 14  {kjonn = "Tennåring Gutt"; bilde = "M14"
            } else if fAar == 15  {kjonn = "Tennåring Gutt"; bilde = "M15"
            } else if fAar == 16  {kjonn = "Tennåring Gutt"; bilde = "M16"
            } else if fAar == 17  {kjonn = "Tennåring Gutt"; bilde = "M17"
            } else if fAar == 18  {kjonn = "Tennåring Gutt"; bilde = "M18"
            } else if fAar == 19  {kjonn = "Tennåring Gutt"; bilde = "M19"
            } else if fAar == 20  {kjonn = "Mann"; bilde = "M20"
            } else if fAar == 21  {kjonn = "Mann"; bilde = "M21"
            } else if fAar < 24  {kjonn = "Mann"; bilde = "M23"
            } else if fAar < 26  {kjonn = "Mann"; bilde = "M25"
            } else if fAar < 28  {kjonn = "Mann"; bilde = "M27"
            } else if fAar < 31 {kjonn = "Voksen Mann"; bilde = "M30"
            } else if fAar < 36  {kjonn = "Voksen Mann"; bilde = "M35"
            } else if fAar < 41  {kjonn = "Voksen Mann"; bilde = "M40"
            } else if fAar < 46  {kjonn = "Voksen Mann"; bilde = "M45"
            } else if fAar < 51  {kjonn = "Voksen Mann"; bilde = "M50"
            } else if fAar < 56  {kjonn = "Voksen Mann"; bilde = "M55"
            } else if fAar < 61  {kjonn = "Voksen Mann"; bilde = "M60"
            } else if fAar < 71  {kjonn = "Voksen Mann"; bilde = "M70"
            } else if fAar < 81  {kjonn = "Voksen Mann"; bilde = "M80"
            } else if fAar < 91  {kjonn = "Voksen Mann"; bilde = "M90"
            } else if fAar >= 92 {kjonn = "Gammel Gubbe"; bilde = "M100"
            }
        }
    }
    
    func dato() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let inputValue = "\(fodtDato)" // Returns valid date even for "12/10.1996"
        
        if dateFormatter.date(from: inputValue) != nil {
            isValidDate = true
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
            
            nextBday = daysUntil(birthday: date1)
           
        }
        else {
            fAar = 0
            fMnd = 0
            fDay = 0
            isValidDate = false
            
        }
        
    }
    
    func zodiac() {
       
        if !isValidDate {starSign = ""
        
        } else if ((Int(bMnd) == 03) && (Int(bDay) ?? 00 >= 21)) || ((Int(bMnd) == 04) && (Int(bDay) ?? 00 <= 19)){
            starSign = "Væren"
            
        } else if ((Int(bMnd) == 04) && (Int(bDay) ?? 00 >= 20)) || ((Int(bMnd) == 05) && (Int(bDay) ?? 00 <= 20)){
            starSign = "Tyren"
            
        } else if ((Int(bMnd) == 05) && (Int(bDay) ?? 00 >= 21)) || ((Int(bMnd) == 06) && (Int(bDay) ?? 00 <= 21)){
            starSign = "Tvillingene"
            
        } else if ((Int(bMnd) == 06) && (Int(bDay) ?? 00 >= 22)) || ((Int(bMnd) == 07) && (Int(bDay) ?? 00 <= 22)){
            starSign = "Krepsen"
        
        } else if ((Int(bMnd) == 07) && (Int(bDay) ?? 00 >= 23)) || ((Int(bMnd) == 08) && (Int(bDay) ?? 00 <= 22)){
            starSign = "Løven"
            
        } else if ((Int(bMnd) == 08) && (Int(bDay) ?? 00 >= 23)) || ((Int(bMnd) == 09) && (Int(bDay) ?? 00 <= 22)){
            starSign = "Jomfruen"
            
        } else if ((Int(bMnd) == 09) && (Int(bDay) ?? 00 >= 23)) || ((Int(bMnd) == 10) && (Int(bDay) ?? 00 <= 23)){
            starSign = "Vekten"
            
        } else if ((Int(bMnd) == 10) && (Int(bDay) ?? 00 >= 24)) || ((Int(bMnd) == 11) && (Int(bDay) ?? 00 <= 21)){
            starSign = "Skorpionen"
            
        } else if ((Int(bMnd) == 11) && (Int(bDay) ?? 00 >= 22)) || ((Int(bMnd) == 12) && (Int(bDay) ?? 00 <= 21)){
            starSign = "Skytten"
       
        } else if ((Int(bMnd) == 12) && (Int(bDay) ?? 00 >= 22)) || ((Int(bMnd) == 01) && (Int(bDay) ?? 00 <= 19)){
            starSign = "Steinbukken"
            
        } else if ((Int(bMnd) == 01) && (Int(bDay) ?? 00 >= 20)) || ((Int(bMnd) == 02) && (Int(bDay) ?? 00 <= 18)){
            starSign = "Vannmannen"
            
        } else if ((Int(bMnd) == 02) && (Int(bDay) ?? 00 >= 19)) || ((Int(bMnd) == 03) && (Int(bDay) ?? 00 <= 20)){
            starSign = "Fiskene"
          }
    }
    
    func zodiac13() {
      
        if !isValidDate {starSign = ""
            
        } else if ((Int(bMnd) == 04) && (Int(bDay) ?? 00 >= 18)) || ((Int(bMnd) == 05) && (Int(bDay) ?? 00 <= 13)){
            starSign = "Væren"
            
        } else if ((Int(bMnd) == 05) && (Int(bDay) ?? 00 >= 14)) || ((Int(bMnd) == 06) && (Int(bDay) ?? 00 <= 21)){
            starSign = "Tyren"
            
        } else if ((Int(bMnd) == 06) && (Int(bDay) ?? 00 >= 22)) || ((Int(bMnd) == 07) && (Int(bDay) ?? 00 <= 20)){
            starSign = "Tvillingene"
            
        } else if ((Int(bMnd) == 07) && (Int(bDay) ?? 00 >= 21)) || ((Int(bMnd) == 08) && (Int(bDay) ?? 00 <= 10)){
            starSign = "Krepsen"
            
        } else if ((Int(bMnd) == 08) && (Int(bDay) ?? 00 >= 11)) || ((Int(bMnd) == 09) && (Int(bDay) ?? 00 <= 16)){
            starSign = "Løven"
            
        } else if ((Int(bMnd) == 09) && (Int(bDay) ?? 00 >= 17)) || ((Int(bMnd) == 10) && (Int(bDay) ?? 00 <= 30)){
            starSign = "Jomfruen"
            
        } else if ((Int(bMnd) == 10) && (Int(bDay) ?? 00 >= 31)) || ((Int(bMnd) == 11) && (Int(bDay) ?? 00 <= 23)){
            starSign = "Vekten"
            
        } else if ((Int(bMnd) == 11) && (Int(bDay) ?? 00 >= 24)) && ((Int(bMnd) == 11) && (Int(bDay) ?? 00 <= 28)){
            starSign = "Skorpionen"
           
        } else if ((Int(bMnd) == 11) && (Int(bDay) ?? 00 >= 29)) || ((Int(bMnd) == 12) && (Int(bDay) ?? 00 <= 18)){
            starSign = "Slangebæreren"
            
        } else if ((Int(bMnd) == 12) && (Int(bDay) ?? 00 >= 19)) || ((Int(bMnd) == 01) && (Int(bDay) ?? 00 <= 20)){
            starSign = "Skytten"
            
        } else if ((Int(bMnd) == 01) && (Int(bDay) ?? 00 >= 21)) || ((Int(bMnd) == 02) && (Int(bDay) ?? 00 <= 16)){
            starSign = "Steinbukken"
            
        } else if ((Int(bMnd) == 02) && (Int(bDay) ?? 00 >= 17)) || ((Int(bMnd) == 03) && (Int(bDay) ?? 00 <= 11)){
            starSign = "Vannmannen"
            
        } else if ((Int(bMnd) == 03) && (Int(bDay) ?? 00 >= 12)) || ((Int(bMnd) == 04) && (Int(bDay) ?? 00 <= 17)){
            starSign = "Fiskene"
            
            }
    }
    
    
    func chinese_element() {
        
        switch chElement {
        case 0:
            chElementText = "Metall"
        case 1:
            chElementText = "Metall"
        case 2:
            chElementText = "Vann"
        case 3:
            chElementText = "Vann"
        case 4:
            chElementText = "Tre"
        case 5:
            chElementText = "Tre"
        case 6:
            chElementText = "Ild"
        case 7:
            chElementText = "Ild"
        case 8:
            chElementText = "Jord"
        case 9:
            chElementText = "Jord"
            
        default:
            break
        }
    }
    
    func chinese_zodiac() {
        let a = Int(bAar)
        let b = a!.remainderReportingOverflow(dividingBy: 12)
        chZodiac = b.partialValue
        if pnr == "25017721022" {chZodiac -= 1}
        switch chZodiac {
        case 1:
            chZodiacText = "Hane"
        case 2:
            chZodiacText = "Hund"
        case 3:
            chZodiacText = "Gris"
        case 4:
            chZodiacText = "Rotte"
        case 5:
            chZodiacText = "Okse"
        case 6:
            chZodiacText = "Tiger"
        case 7:
            chZodiacText = "Hare"
        case 8:
            chZodiacText = "Drage"
        case 9:
            chZodiacText = "Slange"
        case 10:
            chZodiacText = "Hest"
        case 11:
            chZodiacText = "Sau"
        default:
            chZodiacText = "Ape"
        }
    }
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    func daysUntil(birthday: Date) -> Int {
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())
        let date = cal.startOfDay(for: birthday)
        let components = cal.dateComponents([.day, .month], from: date)
        let nextDate = cal.nextDate(after: today, matching: components, matchingPolicy: .nextTimePreservingSmallerComponents)
        return cal.dateComponents([.day], from: today, to: nextDate ?? today).day ?? 0
    }
    
    
}
