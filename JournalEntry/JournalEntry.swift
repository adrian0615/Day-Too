//
//  NSCoding.swift
//  JournalEntry
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation


class JournalEntry: NSObject, NSCoding {
    var entry: String?
    
    
    
    init(entry: String) {
        self.entry = entry
    }
    
    
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let entry = aDecoder.decodeObject(forKey: "entry") as? String else { return nil }
        
        self.init(
            entry: entry
        )
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.entry, forKey: "entry")
    }
    
    

}





