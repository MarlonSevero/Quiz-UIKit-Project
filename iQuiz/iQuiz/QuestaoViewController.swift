//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Marlon Severo on 12/09/24.
//

import UIKit

class QuestaoViewController: UIViewController { //Classe com varios atributos e metodos

    var poits = 0
    var numberQuestao = 0
    
    
    
    @IBOutlet weak var labelQuestao: UILabel! //label
    @IBOutlet var respostaButtons: [UIButton]! //button colletions

    @IBAction func respostaBotaoPress(_ sender: UIButton) { //mudamos de any (padrao) para UIButton
        print(sender.tag)
    }
    /* @IBAction:Funcao de acao do botao e @IBOutlet: Referencia ao botao */
    
    override func viewDidLoad() { //viewDidLoad é uma funcao padrao
        super.viewDidLoad()
        configLayout() //exec funcao
        configQuestao() //exec funcao
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true //remove a opcao de poder clicar em 'back'
        labelQuestao.numberOfLines = 0 //Altera para automatico o numero de linhas
        labelQuestao.textAlignment = .center //centraliza o centro
        for button in respostaButtons{ //deixa os botoes arredendados
            button.layer.cornerRadius = 12.0
        }
    }
    
    func configQuestao(){
        labelQuestao.text = questoes[numberQuestao].titulo //esta pegando o titulo das questoes
    }
}
