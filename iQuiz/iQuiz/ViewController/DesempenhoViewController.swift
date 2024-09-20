//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Marlon Severo on 15/09/24.
//

import UIKit

class DesempenhoViewController: UIViewController {

    var pontuacao: Int?
    
    
    
    @IBOutlet weak var buttonReiniciar: UIButton!
    @IBOutlet weak var percentualLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
        configDesempenho()
    }
    
    func configLayout(){
        buttonReiniciar.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true

    }
    
    func configDesempenho(){
        guard let pontuacao = pontuacao else {return}
        resultLabel.text = "Voce acertou \(pontuacao) de \(questoes.count) questoes."
        let porcentagemAcertos = (pontuacao * 100) / questoes.count
        percentualLabel.text = "O percentual final de acertos foi de: \(porcentagemAcertos)%"
    }
}
