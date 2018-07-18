//
//  ViewController.swift
//  Idade de cachorro
//
//  Created by Marcelo Salvador on 26/11/16.
//  Copyright © 2016 Hibejix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        campoIdadeCachorro.delegate = self;
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")));
        
    }
    
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
        var idadeCachorro = Int(campoIdadeCachorro.text!)!;
        
        idadeCachorro = idadeCachorro * 7;
        
        legendaResultado.text = "A idade do cachorro é " + String(idadeCachorro);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ idadeCachorro: UITextField) -> Bool {
        idadeCachorro.resignFirstResponder();
        return true;
    }
}

