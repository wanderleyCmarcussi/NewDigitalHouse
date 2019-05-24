//
//  CarroManager.swift
//  TableviewCarros
//
//  Created by Digital House on 23/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation

class CarroManager {
    static let shared: CarroManager = CarroManager()
    private var carros: [Carro]
    
    private init() {
        self.carros = []
    }
    
    func adicionaCarro(carro: Carro) {
        self.carros.append(carro)
    }
    
    func getCarros() -> [Carro] {
        return self.carros
    }
    
    func deletaCarro(index: Int) {
        self.carros.remove(at: index)
    }
}
