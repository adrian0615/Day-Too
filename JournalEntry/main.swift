//
//  main.swift
//  JournalEntry
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation



let prompt = "Please type your Journal Entry of the day."

func getEntryFromUser(prompt: String) -> String? {
    print(prompt)
    
    if let entry = readLine(strippingNewline: true) {
        return entry
    } else {
        print("You didn't enter a Journal Entry.")
        return nil
    }
}


var myEntry = getEntryFromUser(prompt: prompt)!



let journalEntry = JournalEntry(entry: myEntry)



let saved = try? myEntry.write(toFile: "/Users/AdrianHome/JournalEntry.txt", atomically: true, encoding: .utf8)



let whatIsaved = try! String(contentsOfFile: "/Users/AdrianHome/JournalEntry.txt", encoding: .utf8)

print(whatIsaved)















