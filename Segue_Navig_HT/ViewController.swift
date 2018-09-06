//
//  ViewController.swift
//  Segue_Navig_HT
//
//  Created by Bertran on 03.09.2018.
//  Copyright © 2018 Bertran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    var titleMessage : String = ""
    // результат будем выводить в заголовок конечного контроллера с помощью этой переменной
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    @IBAction func loginButton(_ sender: Any)
    {
        if userName.text != ""
        {
            titleMessage = "Пользователь: \(userName.text!)"
            performSegue(withIdentifier: "showTitle", sender: nil)
        }
    }
    
    @IBAction func forgotLoginButton(_ sender: Any)
    {
        titleMessage = "Восстановить логин"
        performSegue(withIdentifier: "showTitle", sender: nil)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any)
    {
        titleMessage = "Восстановить пароль"
        performSegue(withIdentifier: "showTitle", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = titleMessage
    }
    
    
}

