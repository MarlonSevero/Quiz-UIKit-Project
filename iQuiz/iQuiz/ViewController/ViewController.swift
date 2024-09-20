//
//  ViewController.swift
//  iQuiz
//
//  Created by Marlon Severo on 09/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ButtonPrecionado(_ sender: Any) {
        print("O botao foi precionado")
    }
    
    
    @IBOutlet weak var buttonIniciar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
    }
    
    func configLayout(){
        buttonIniciar.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
}

