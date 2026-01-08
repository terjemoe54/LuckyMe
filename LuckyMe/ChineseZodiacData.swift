//
//  ChinesZodiacData.swift
//  LuckyMe
//
//  Created by Terje Moe on 25/03/2024.
//

import SwiftUI

extension ChineseZodiacDetailView {
  
    func chineseZodiacInfo(chZodiacText:String) {
        switch chZodiacText {
        case "Hane":
            chineseZodiacInfo = "Hane.\nFødselsår(1921, 1933, 1945, 1957, 1969, 1981, 1993, 2005, 2017).\nNeste år av Hanen 2029.\n\nPersonlighet:\n(ærlige, presise, observante, flittige, modige, stilige og litt edle, med en sterk sans for organisering, humor og selvtillit, men kan også være bryske og kritiske).\n\nKompatibel med Oksen, Slangen, og Dragen.\nMinst kompatibel med: Hare."
                        
        case "Hund":
            chineseZodiacInfo = "Hund.\nFødselsår(1934, 1946, 1958, 1970, 1982, 1994, 2006, 2018).\nNeste år av Hunden 2030.\nPersonlighet:\n (lojal, ærlig, sjenerøs,leken, sta).\n, kompatibel med Hare.\nMinst kompatibel med: Drage."
            
        case "Gris":
            chineseZodiacInfo = "Gris.\nFødselsår(1935, 1947, 1959, 1971, 1983, 1995, 2007, 2019).\nNeste år av grisen 2031.\nPersonlighet\n (glad, sjenerøs, logisk, kjærlig, hissig).\n, kompatibel med Tiger.\nMinst kompatibel med Slange."
            
            
        case "Rotte":
            chineseZodiacInfo = "Rotte.\nFødselsår(1912, 1924, 1936, 1948, 1960, 1972, 1984, 1996, 2008, 2020).\nNeste år med rotten 2032.\nPersonlighet:, Ambitiøs, sjarmerende, ærlig, kritisk).\nMest kompatibel med Okse.\nMinst kompatibel med Hest."
            
        case "Okse":
            chineseZodiacInfo = "Okse.\nFødselsår(1913, 1925, 1937, 1949, 1961, 1973, 1985, 1997, 2009, 2021).\nNeste år av Oksen 2033.\nPersonlighet: \n (tålmodig,hardt arbeidsom, sta).\nMest kompatibel med Rotte.\nMinst kompatibel med sau."
              
        case "Tiger":
            chineseZodiacInfo = "Tiger.\nFødselsår(1914, 1926, 1938, 1950, 1962, 1974, 1986, 1998, 2010, 2022).\nNeste år av Tiger 2034).\nPersonlighet:\n (Nyskjerrig, Selvsikker,Eventyrlysten, Egoistisk).\nMest kompatibel med Gris.\nMinst kompatibel med Ape."
              
        case "Hare":
            chineseZodiacInfo = "Hare.\nFødselsår(1915, 1927, 1939, 1951, 1963, 1975, 1987, 1999, 2011, 2023).\nNeste år av kaninen 2035.\nPersonlighet:\n kjærlig, intelligent, nøysom, heldig).\nMest kompatibel med Dog.\nMinst kompatibel med Hane."
                
        case "Drage":
            chineseZodiacInfo = "Drage.\nFødselsår(1928, 1940, 1952, 1964, 1976, 1988, 2000, 2012, 2024).\nNeste år av Dragen 2036.\nPersonlighet:\n (Sterk, Temperamangfull, Ambisiøs, Selvstendig).\nMest kompatibelt med Hane.\nMinst kompatibel med Hund."
            
        case "Slange":
            chineseZodiacInfo = "Slange.\nFødselsår(1917, 1929, 1941, 1953, 1965, 1977, 1989, 2001, 2013).\nNeste år av Slange 2025.\nPersonlighet:\n (Ambisiøs, Klok, Intens, Besluttsom).\nkompatibel med Ape.\nMinst kompatibel med Gris."
            
        case "Hest":
            chineseZodiacInfo = "Hest.\nFødselsår(1918, 1930, 1942, 1954, 1966, 1978, 1990, 2002, 2014).\nNeste år av Hesten 2026.\nPersonlighet:\n (Energisk, Populær, Possitiv,Utålmodig). \nKompatibel med sauer.\nMinst kompatibel med Rotte."
               
        case "Sau":
            chineseZodiacInfo = "Sau.\nFødselsår(1919, 1931, 1943, 1955, 1967, 1979, 1991, 2003, 2015).\nNeste år av sauen 2027.\nPersonlighet:\n (Snill, Tålmodig, Overbevisende, Mild, Engstelig).\nKompatibel med Hest.\nMinst kompatibel med: Okse."
      
        case "Ape":
            chineseZodiacInfo = "Ape.\nFødselsår(1920, 1932, 1944, 1956, 1968, 1980, 1992, 2004, 2016).\nNeste år av Apen er  2028.\nPersonlighet:\n (Intelligent, Påvirkende, Nysgjerrig Tålmodig).\nMest kompatibel med Slange\nMinst kompatibel med Tiger."
             
        default:
            break
        }
    }
    
    func chineseElementInfo(chElementText:String) {
        switch chElementText {
        case "Metall":
            chineseElementInfo = "Metall.\nFødselsår: Siste fødselsnummer er\n0 eller 1.\nAsosiert med: Soliditet og viljestyrke."
                        
        case "Vann":
            chineseElementInfo = "Vann.\nFødselsår: Siste fødselsnummer er\n2 eller 3.\nAsosiert med: Respons og overtalelse"
            
        case "Tre":
            chineseElementInfo = "Tre.\nFødselsår: Siste fødselsnummer er\n4 eller 5.\nAsosiert med: Fantasi og kreativitet"
       
        case "Ild":
            chineseElementInfo = "Ild.\nFødselsår: Siste fødselsnummer er\n6 eller 7.\nAsosiert med: lidenskap og utbrudd av dynamisk energi"
       
        case "Jord":
            chineseElementInfo = "Jord.\nFødselsår: Siste fødselsnummer er\n8 eller 9.\nAsosiert med: Jordnære egenskaper som oppmuntrer til fokus og forpliktelse til å nå mål."
       
        default:
            break
        }
    }

    
    
}
