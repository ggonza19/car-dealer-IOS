//
//  ViewController.swift
//  Heitor_GabrielGonzalez
//
//  Created by COTEMIG on 21/09/20.
//  Copyright © 2020 Cotemig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usertext: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func login (_ sender: Any) {
       let user = usertext.text
       let password = passwordText.text
       
        if user == "admin" && password == "123"{
        
        //mandar para a proxima
            performSegue(withIdentifier: "segueLogin", sender: nil)
        } else{
            let alert = UIAlertController(title: "Erro", message: "Usuario ou senha invalida", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK!", style: .default))
            present(alert, animated: true)
        }
    
}
}

struct Login: Codable {
    let user: String
    let password: String
}



