//
//  ViewController.swift
//  atividade2
//
//  Created by TBessa on 25/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var see: UIButton!
    @IBOutlet weak var password: UITextField!
    
    var isPurple = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func seeAction(_ sender: Any) {
        let aberto = UIImage(named: "olho-aberto")
        let fechado = UIImage(named: "olho-fechado")
        
        if isPurple{
            password.isSecureTextEntry = false
            see.setImage(aberto, for: .normal)
            isPurple = false
        }else{
            password.isSecureTextEntry = true
            see.setImage(fechado, for: .normal)
            isPurple = true
        }
        
    }
    
}

