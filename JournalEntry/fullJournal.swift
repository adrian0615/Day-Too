//
//  fullJournal.swift
//  JournalEntry
//
//  Created by Adrian McDaniel on 1/2/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


class Journal: NSObject, NSCoding {
    var entries: [entry]
    
    
    init(entries: [entry]) {
        self.entries = entries
    }
    
    
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let entries = aDecoder.decodeObject(forKey: "entries") as? [entry] else { return nil }
        
        self.init(
            entries: entries
        )
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.entries, forKey: "entries")
    }
    
}
