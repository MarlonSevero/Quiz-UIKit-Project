//
//  Questao.swift
//  iQuiz
//
//  Created by Marlon Severo on 13/09/24.
//

import Foundation

struct Questao{
    var titulo: String
    var respostas: [String]
    var respostaCorret: Int
}

let questoes: [Questao] = [Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra","Expelliarmus"], respostaCorret: 2),
    
    Questao(titulo: "Em que ano Vingadores Ultimato foi lançado?", respostas: ["2019", "2018","2017"], respostaCorret: 0),
    
    Questao(titulo: "Em qual ano foi lançado o filme Titanic?", respostas: ["1995", "1997", "1999"], respostaCorret: 1),
    
    Questao(titulo: "Quem interpretou o personagem Jack Sparrow na franquia Piratas do Caribe?", respostas: ["Orlando Bloom", "Johnny Depp", "Brad Pitt"], respostaCorret: 1),
                              
    Questao(titulo: "Qual é o nome do vilão principal em Os Vingadores: Guerra Infinita?", respostas: ["Loki", "Ultron", "Thanos"], respostaCorret: 2),
                              
    Questao(titulo: "Qual desses filmes foi dirigido por Steven Spielberg?", respostas: ["Inception", "Jurassic Park", "Gladiator"], respostaCorret: 1),
    
    Questao(titulo: "Em O Senhor dos Anéis, qual é o nome do reino de Aragorn?", respostas: ["Gondor", "Rohan", "Mordor"], respostaCorret: 0),
    
    Questao(titulo: "Em Matrix, qual pílula Neo escolhe tomar?", respostas: ["Pílula vermelha", "Pílula azul", "Pílula verde"], respostaCorret: 0),
                              
    Questao(titulo: "Qual desses filmes não é estrelado por Leonardo DiCaprio?", respostas: ["A Origem", "Clube da Luta", "O Lobo de Wall Street"], respostaCorret: 1),
                            
    Questao(titulo: "Quem foi o diretor do filme O Poderoso Chefão?", respostas: ["Martin Scorsese", "Quentin Tarantino", "Francis Ford Coppola"], respostaCorret: 2),
                              
    Questao(titulo: "Em Star Wars: Uma Nova Esperança, qual é o nome do planeta natal de Luke Skywalker?", respostas: ["Tatooine", "Naboo", "Endor"], respostaCorret: 0),
                              
    Questao(titulo: "Em Harry Potter, qual é o nome da casa de Draco Malfoy em Hogwarts?", respostas: ["Grifinória", "Lufa-Lufa", "Sonserina"], respostaCorret: 2)
]

