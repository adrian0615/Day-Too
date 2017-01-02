//
//  Journal.swift
//  JournalEntry
//
//  Created by Adrian McDaniel on 1/2/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
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


func askUserYesOrNo() -> Bool {
    print("Would you like to make an entry?")
    print("Type 'y' for YES or 'n' for No.")
    var output: Bool? = nil
    
    while output == nil {
        if let string: String = readLine(strippingNewline: true) {
            switch string {
            case "y", "Y", "yes", "YES":
                output = true
            case "n", "No", "no", "NO":
                output = false
            default:
                output = nil
                
                
            }
        }
    }
    return output!
}




let whatsInJournal = try! String(contentsOfFile: "/Users/AdrianHome/JournalEntry.txt", encoding: .utf8)





func runJournal() {
    print("Welcome to your Journal!")
    print("*******************")
    print(whatsInJournal)
    print("*******************")
    
    if askUserYesOrNo() == true {
    let myEntry = getEntryFromUser(prompt: prompt)!
    _ = JournalEntry(entry: myEntry)
        let journal = "\(whatsInJournal)\n\(myEntry)\n"
        
        _ = try? journal.write(toFile: "/Users/AdrianHome/JournalEntry.txt", atomically: true, encoding: .utf8)
        let saved = try! String(contentsOfFile: "/Users/AdrianHome/JournalEntry.txt", encoding: .utf8)
        print("JOURNAL ENTRY SAVED\n")
        print("*******************")
        print(saved)
        print("*******************")
    
    }
}







