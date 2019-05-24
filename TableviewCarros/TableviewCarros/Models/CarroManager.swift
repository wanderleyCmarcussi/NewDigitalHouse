//
//  CarroManager.swift
//  TableviewCarros
//
//  Created by Wanderley Marcussi on 23/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

class CarroManager {
    static let shared : CarroManager = CarroManager()
    private var carros: [Carro]
    
    private init() {
        self.carros = []
    }
    
    func adicionaCarro (carro : Carro) {
        self.carros.append(carro)
    }
    
    func gerCarros() -> [Carro]{
        return self.carros
    }
}
