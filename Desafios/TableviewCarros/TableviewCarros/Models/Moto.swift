//
//  Moto.swift
//  TableviewCarros
//
//  Created by Wanderley Marcussi on 24/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

class Moto {
    
    var modelo: String?
    var modeloImagem: String?
    var tipo: String?
    var preco: Float?
    
    init(modelo: String, modeloImagem: String, tipo: String ,preco: Float) {
        
        self.modelo = modelo
        self.modeloImagem = modeloImagem
        self.tipo = tipo
        self.preco = preco
    }
}
