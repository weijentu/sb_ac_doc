//
//  Document.swift
//  sb_ac_doc
//
//  Created by Eric Gorr on 3/13/16.
//  Copyright © 2016 Eric Gorr. All rights reserved.
//

import Cocoa

class Document: NSPersistentDocument {

    override init() {
        super.init()
        // Add your subclass-specific initialization here.
    }

    override func windowControllerDidLoadNib(aController: NSWindowController) {
        super.windowControllerDidLoadNib(aController)
        // Add any code here that needs to be executed once the windowController has loaded the document's window.
    }

    override class func autosavesInPlace() -> Bool {
        return true
    }

    override func makeWindowControllers()
    {
        let moc = self.managedObjectContext!
        
        // Returns the Storyboard that contains your Document window.
        let storyboard          = NSStoryboard(name: "Main", bundle: nil)
        let windowController    = storyboard.instantiateControllerWithIdentifier( "Document Window Controller" ) as! NSWindowController
        let contentController   = windowController.contentViewController as! ViewController
        
        NSLog( "%@", moc )
        
//        contentController.context = self.managedObjectContext!
        
        NSLog( "%@", contentController.context! )
        
        self.addWindowController( windowController )
    }

}
