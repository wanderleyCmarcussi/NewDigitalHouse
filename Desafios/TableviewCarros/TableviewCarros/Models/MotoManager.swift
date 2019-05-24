//
//  MotoManager.swift
//  TableviewCarros
//
//  Created by Wanderley Marcussi on 24/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import Foundation


class MotoManager {
    static let shared: MotoManager =  MotoManager()
    private var motos: [Moto]
    
    private init() {
        self.motos = []
    }
    
    func adicionaMoto(moto: Moto) {
        self.motos.append(moto)
    }
    
    func getMotos() -> [Moto] {
        return self.motos
    }
    
    func deletaMoto(index: Int) {
        self.motos.remove(at: index)
    }
}
