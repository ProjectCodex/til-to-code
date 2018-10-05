//
//  CreateSnippetView.swift
//  TIL to Code
//
//  Created by CHRISTOPHER ALBANESE on 10/4/18.
//  Copyright © 2018 Project Codex. All rights reserved.
//

import UIKit

class CreateSnippetView: UIViewController {
    
    var snippets = [Snippet]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBOutlet weak var snippetTitle: UITextField!
    @IBOutlet weak var snippetDescription: UITextField!
    @IBOutlet weak var snippetTxtArea: UITextView!
    
    @IBAction func btnSaveSnippet(_ sender: Any) {
        
        if snippetTitle.text != "" && snippetTxtArea.text != "" {
            
            let snippetData = Snippet(context: PersistenceService.context)
            snippetData.title = snippetTitle.text!
            snippetData.desc = snippetDescription.text
            snippetData.code = snippetTxtArea.text!
            snippetData.date = Date() as NSDate
            PersistenceService.saveContext()
            snippets.append(snippetData)
            print(snippets)
            
            performSegue(withIdentifier: "createToMaster", sender: self)
            
        }
        
    }


}
