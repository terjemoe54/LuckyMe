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
        case "Roster":
            chineseZodiacInfo = "Rooster.\nBirth years(1921, 1933, 1945, 1957, 1969, 1981, 1993, 2005, 2017).\nNext year of the Rooster 2029.\nPersonality:\n (Empathetic, Creative, Reliable, Consistent, Boastful).\nMost compatible with Dragon.\nLeast compatible with: Rabbit."
                        
        case "Dog":
            chineseZodiacInfo = "Dog.\nBirth years(1934, 1946, 1958, 1970, 1982, 1994, 2006, 2018).\nNext year of the Dog 2030.\nPersonality:\n (Loyal, Honest, Generous, Playful, Stubborn).\nMostcompatible with Rabbit.\nLeast compatible with Dragon."
            
        case "Pig":
            chineseZodiacInfo = "Pig.\nBirth years(1935, 1947, 1959, 1971, 1983, 1995, 2007, 2019).\nNext year of the Pig 2031.\nPersonality\n (Happy, Generous, Logical, Loving, Short-tempered).\nMost compatible with Tiger.\nLeast compatible with Snake."
            
        case "Rat":
            chineseZodiacInfo = "Rat.\nBirth years(1912, 1924, 1936, 1948, 1960, 1972, 1984, 1996, 2008, 2020).\nNext year of the Rat 2032.\nPersonality:\n (Frugal, Ambitious, Honest, Charming, Critical).\nMost compatible with Ox.\nLeast compatible with Horse."
            
        case "Ox":
            chineseZodiacInfo = "Ox.\nBirth years(1913, 1925, 1937, 1949, 1961, 1973, 1985, 1997, 2009, 2021).\nNext year of the Ox 2033.\nPersonality:\n (Perseverant, Patient, Hardworking, Determined, Stubborn).\nMost compatible with Rat.\nLeast compatible with Sheep."
            
        case "Tiger":
            chineseZodiacInfo = "Tiger.\nBirth years(1914, 1926, 1938, 1950, 1962, 1974, 1986, 1998, 2010, 2022).\nNext year of the Tiger 2034).\nPersonality:\n (Courageous, Candid, Confident, Adventurous, Selfish).\nMost compatible with Pig.\nLeast compatible with Monkey."
            
        case "Rabbit":
            chineseZodiacInfo = "Rabbit.\nBirth years(1915, 1927, 1939, 1951, 1963, 1975, 1987, 1999, 2011, 2023).\nNext year of the Rabbit 2035.\nPersonality:\n Gentle, Intelligent, Loving, Articulate, Lucky).\nMost compatible with Dog.\nLeast compatible with Rooster."
            
        case "Dragon":
            chineseZodiacInfo = "Dragon.\nBirth years(1928, 1940, 1952, 1964, 1976, 1988, 2000, 2012, 2024).\nNext year of the Dragon 2036.\nPersonality:\n (Strong, Independent, Fortunate, Ambitious, Temperamental).\nMost compatible with Rooster.\nLeast compatible with Dog."
            
        case "Snake":
            chineseZodiacInfo = "Snake.\nBirth years(1917, 1929, 1941, 1953, 1965, 1977, 1989, 2001, 2013).\nNext year of the Snake 2025.\nPersonality:\n (Ambitious, Wise, Intense, Determined, Possessive).\nMost compatible with Monkey.\nLeast compatible with Pig."
            
        case "Horse":
            chineseZodiacInfo = "Horse.\nBirth years(1918, 1930, 1942, 1954, 1966, 1978, 1990, 2002, 2014).\nNext year of the Horse 2026.\nPersonality:\n (Energetic, Free, Popular,Positive,Impatient).\nMost compatible with Sheep.\nLeast compatible with Rat."
            
        case "Sheep":
            chineseZodiacInfo = "Sheep.\nBirth years(1919, 1931, 1943, 1955, 1967, 1979, 1991, 2003, 2015).\nNext year of the Sheep 2027.\nPersonality:\n (Kind, Patient, Persuasive, Gentle, Timid).\nMost compatible with Horse.\nLeast compatible with: Ox."
            
        case "Monkey":
            chineseZodiacInfo = "Monkey.\nBirth years(1920, 1932, 1944, 1956, 1968, 1980, 1992, 2004, 2016).\nNext year of the Monkey 2028.\nPersonality:\n (Intelligent, Influential, Curious, Passionate, Easily Discouraged).\nMost compatible with Snake\nLeast compatible with Tiger."
        default:
            break
        }
    }
    
    func chineseElementInfo(chElementText:String) {
        switch chElementText {
        case "Metal":
            chineseElementInfo = "Metal.\nBirth years: Last number of your birth is\n0 or 1.\nAssociated with: Solidity And Willpower."
                        
        case "Water":
            chineseElementInfo = "Water.\nBirth years: Last number of your birth is\n2 or 3.\nAssociated with: Responsiveness And Persuasion”"
            
        case "Wood":
            chineseElementInfo = "Wood.\nBirth years: Last number of your birth is\n4 or 5.\nAssociated with: Imagination And Creativity"
       
        case "Fire":
            chineseElementInfo = "Fire.\nBirth years: Last number of your birth is\n6 or 7.\nAssociated with: Passion, And Bursts Of Dynamic Energy”"
       
        case "Earth":
            chineseElementInfo = "Earth.\nBirth years: Last number of your birth is\n8 or 9.\nAssociated with: Down-To-Earth Qualities That Encourage Focus And Commitment To Achieving Goals.”"
       
        default:
            break
        }
    }

    
    
}
