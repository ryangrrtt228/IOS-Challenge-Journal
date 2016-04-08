//
//  EntryController.swift
//  JournalTest
//
//  Created by Batman on 4/8/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedController = EntryController()
    
    var entries:[Entry] = []
    
    
    func addEntry(entry: Entry) {
        entries.append(entry)
    }
    
    func removeEntry(entry: Entry) {
        if let entriesIndex = entries.indexOf(entry){
            entries.removeAtIndex(entriesIndex)
            
        }
    }
    
    
}

