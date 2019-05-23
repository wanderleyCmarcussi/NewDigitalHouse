//
//  Carros.swift
//  TableViewCarros
//
//  Created by Digital House on 21/05/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import Foundation

class Carro {
    var nome: String?
    var nomeImage: String?
    var ano: String?
    var km: String?
    var preco: Float?
    
    
    init(nome : String, nomeImage: String, ano: String, km: String, preco: Float) {
    
        self.nome = nome
        self.nomeImage = nomeImage
        self.ano = ano
        self.km = km
        self.preco = preco
    }
}
