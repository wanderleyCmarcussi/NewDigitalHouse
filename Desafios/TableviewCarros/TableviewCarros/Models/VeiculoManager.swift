//
//  VeiculoManager.swift
//  TableviewCarros
//
//  Created by Digital House on 25/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

class VeiculoManager {
    static let shared: VeiculoManager = VeiculoManager()
    private var carros: [Carro]
    private var motos: [Moto]

    private init() {
        self.carros = []
        self.motos = []
        
    }

    func adicionaVeiculo(veiculo: Veiculo) {
        if veiculo is Carro {
            self.carros.append(veiculo as! Carro)
        } else {
            self.motos.append(veiculo as! Moto)
        }
    }

    func getCarros() -> [Carro] {
        return self.carros
    }

    func deletaCarro(index: Int) {
        self.carros.remove(at: index)
        
    }
    
    func getMotos() -> [Moto] {
        return self.motos
    }
    
    func deletaMoto(index: Int) {
        self.motos.remove(at: index)
        
    }
}
