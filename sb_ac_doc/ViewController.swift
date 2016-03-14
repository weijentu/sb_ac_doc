//
//  ViewController.swift
//  sb_ac_doc
//
//  Created by Eric Gorr on 3/13/16.
//  Copyright © 2016 Eric Gorr. All rights reserved.
//

import Cocoa

class ViewController: NSViewController
{
    var context: NSManagedObjectContext? {
        guard let appDelegate = NSApplication.sharedApplication().delegate as? AppDelegate else {
            return nil
        }
        return appDelegate.managedObjectContext
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject?
    {
        didSet
        {
            // Update the view, if already loaded.
        }
    }


}

