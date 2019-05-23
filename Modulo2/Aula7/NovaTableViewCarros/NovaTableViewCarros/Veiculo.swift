//
//  Carros.swift
//  NovaTableViewCarros
//
//  Created by Wanderley Marcussi on 23/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation


class Veiculo {
    var nomeVeiculo: String?
    var fabricante: String?
    var periodoFabricacao: String?
    var imagemVeiculo: String?
    
    init(nomeVeiculo: String, fabricante: String, periodoFabricacao: String, imagemVeiculo: String) {
    
        self.nomeVeiculo = nomeVeiculo
        self.fabricante = fabricante
        self.periodoFabricacao = periodoFabricacao
        self.imagemVeiculo = imagemVeiculo
        
    }
}
