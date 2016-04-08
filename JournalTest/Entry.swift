//
//  Entry.swift
//  JournalTest
//
//  Created by Batman on 4/8/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation

class Entry : Equatable {
    
    let title: String
    let text: String
    let timeStamp: NSDate
    
    var dictionaryCopy: [String: AnyObject]{
        let dictionary = ["title":title, "text": text, "timeStamp": timeStamp]
        return dictionary
        
    }
    
    init(title: String, text: String, timeStamp: NSDate){
        self.title = title
        self.text = text
        self.timeStamp = timeStamp
    }
    
    init?(dictionary:[String: AnyObject]) {
        guard let title = dictionary["title"] as? String,
            text = dictionary["text"] as? String,
            timeStamp = dictionary["timeStamp"] as? NSDate else {return nil}
        self.title = title
        self.text = text
        self.timeStamp = timeStamp
    }
    
    
}


func ==(lhs: Entry, rhs: Entry) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    
}


