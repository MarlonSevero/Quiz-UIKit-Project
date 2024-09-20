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
        let userAcerto = questoes[numberQuestao].respostaCorret == sender.tag //estamos armazenando na constante uma verificacao se
        
        if userAcerto{
            poits += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
        }else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if numberQuestao < questoes.count - 1 {
            numberQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configQuestao), userInfo: nil, repeats: false)
        }else{
            navegaTelaDesempenho()
        }

    }
    /* @IBAction:Funcao de acao do botao e @IBOutlet: Referencia ao botao */
    
    override func viewDidLoad() { //viewDidLoad é uma funcao padrao
        super.viewDidLoad()
        configLayout() //exec funcao
        configQuestao() //exec funcao
    }
    
    func navegaTelaDesempenho(){
        performSegue(withIdentifier: "irTelaDesempenho", sender: nil)
    }
     
    func configLayout(){
        navigationItem.hidesBackButton = true //remove a opcao de poder clicar em 'back'
        labelQuestao.numberOfLines = 0 //Altera para automatico o numero de linhas
        labelQuestao.textAlignment = .center //centraliza o centro
        for button in respostaButtons{ //deixa os botoes arredendados
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configQuestao(){
        labelQuestao.text = questoes[numberQuestao].titulo //esta pegando o titulo das questoes
        for botao in respostaButtons {
            let tituloBotao = questoes[numberQuestao].respostas[botao.tag] // estamos guardando em uma constante todas as respostas de botoes utilizando 
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red:116/255 , green: 50/255 , blue: 255/255, alpha: 1)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else {return}
        desempenhoVC.pontuacao = poits //passagem de parametros entre telas
    }
}
