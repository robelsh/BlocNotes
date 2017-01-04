//
//  ViewController.swift
//  BlocNote
//
//  Created by Etienne Jézéquel on 04/01/2017.
//  Copyright © 2017 Etienne Jézéquel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var noteView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addNoteButtonTouched(_ sender: UIButton) {
        let typedText:String? = self.textField.text
        if typedText != nil {
            var allNotesText:String = self.noteView.text
            if allNotesText.characters.count > 0 {
                allNotesText = allNotesText + "\n"
            }
            allNotesText = allNotesText + typedText!
            self.noteView.text = allNotesText
            self.textField.text = ""
        }
    }

}

