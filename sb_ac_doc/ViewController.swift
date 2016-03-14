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
    var context: NSManagedObjectContext?
    
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

