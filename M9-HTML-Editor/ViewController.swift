//
//  ViewController.swift
//  M9-HTML-Editor
//
//  Created by Hardik on 26/01/16.
//  Copyright © 2016 Hardik. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var editor:M9Editor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       /* let editor=M9Editor(frame: NSMakeRect(0,0,300,300));
        
        self.view.addSubview(editor);*/
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func assignText(sender: AnyObject) {
        

        editor.setContent("<h1>Hello Max9xs Here.</h1>")
        
    }
    
    @IBAction func getText(sender: AnyObject) {
        
        print(editor.getContent());
        
    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

