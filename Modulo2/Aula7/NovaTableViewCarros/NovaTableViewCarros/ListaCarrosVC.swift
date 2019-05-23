//
//  ViewController.swift
//  NovaTableViewCarros
//
//  Created by Wanderley Marcussi on 23/05/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit

class ListaCarrosVC: UIViewController {

    
        var arrayVeiculo : [Veiculo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var veiculo1 = Veiculo(nomeVeiculo: "Corcel", fabricante: "Ford", periodoFabricacao: "1968 até 1977", imagemVeiculo: "Corcel" )
        
        var veiculo2 = Veiculo(nomeVeiculo: "Karmamm Guia", fabricante: "Guia", periodoFabricacao: "1955 a 1975", imagemVeiculo: "karmamm")
        
        var veiculo3 = Veiculo(nomeVeiculo: "Impala", fabricante: "Chevrolet", periodoFabricacao: "1967 a 1970", imagemVeiculo: "impala")
        
        var veiculo4 = Veiculo(nomeVeiculo: "DKV", fabricante: "DKV", periodoFabricacao: "1968 até 1977", imagemVeiculo: "dkv")
        
        var veiculo5 = Veiculo(nomeVeiculo: "Aero Willys", fabricante: "Willys", periodoFabricacao: "1955 a 1969", imagemVeiculo: "willys")
        
        var veiculo6 = Veiculo(nomeVeiculo: "Itamaraty", fabricante: "Willys", periodoFabricacao: "1960 a 1970", imagemVeiculo: "itamaraty")

        self.arrayVeiculo.append(veiculo1)
        self.arrayVeiculo.append(veiculo2)
        self.arrayVeiculo.append(veiculo3)
        self.arrayVeiculo.append(veiculo4)
        self.arrayVeiculo.append(veiculo5)
        self.arrayVeiculo.append(veiculo6)

        
        
        // Do any additional setup after loading the view.
    }


}

