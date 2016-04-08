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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        // SAVE TO PERSISTENCE
    }
    
    
    @IBAction func ClearButtonTapped(sender: AnyObject) {
        
        
    }

    
    
    
}
