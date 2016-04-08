//
//  EntryViewController.swift
//  JournalTest
//
//  Created by Batman on 4/8/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var bodyTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
       
        if let entry = self.entry {
            entry.title = titleTextField.text!
            entry.text = bodyTextView.text
            entry.timeStamp = NSDate()
        } else {
            
            let newEntry = Entry(title: self.titleTextField.text!, text: self.bodyTextView.text, timeStamp: NSDate())
            EntryController.sharedController.addEntry(newEntry)
            self.entry = newEntry
            
            
        }
    }
    
        @IBAction func ClearButtonTapped(sender: AnyObject) {
            bodyTextView.text = " "
            titleTextField.text = " "
            
            
        }
    
}