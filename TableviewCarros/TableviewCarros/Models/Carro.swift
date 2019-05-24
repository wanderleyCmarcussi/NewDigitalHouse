//
//  Carro.swift
//  TableviewCarros
//
//  Created by Felipe Silva on 5/21/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation


class Carro {
    
    var nome: String?
    var nomeImagem: String?
    var ano: String?
    var km: String?
    var preco: Float?
    
    init(nome: String, nomeImagem: String, ano: String, km: String, preco: Float) {
        
        self.nome = nome
        self.nomeImagem = nomeImagem
        self.ano = ano
        self.km = km
        self.preco = preco
        
    }
    
}
