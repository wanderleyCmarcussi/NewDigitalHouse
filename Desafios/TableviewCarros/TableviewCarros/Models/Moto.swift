//
//  Moto.swift
//  TableviewCarros
//
//  Created by Wanderley Marcussi on 24/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

class Moto: Veiculo {
    var tipo: String?

    init(nome: String, nomeImagem: String, ano: String, km: String, preco: Float, tipo: String) {
        super.init(nome: nome, nomeImagem: nomeImagem, ano: ano, km: km, preco: preco)
        self.tipo = tipo
    }
}
