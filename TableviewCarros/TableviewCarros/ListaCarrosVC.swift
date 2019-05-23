//
//  ViewController.swift
//  TableviewCarros
//
//  Created by Felipe Silva on 5/21/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class ListaCarrosVC: UIViewController {
    
    
    @IBOutlet weak var carrosTableView: UITableView!
    
    var arrayCarros:[Carro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let carro1 = Carro(nome: "Fusca",
                           nomeImagem: "fusca",
                           ano: "1980",
                           km: "00", preco: 45000)
        
        let carro2 = Carro(nome: "Palio",
                           nomeImagem: "palio",
                           ano: "2000",
                           km: "2000", preco: 15000)
        
        let carro3 = Carro(nome: "Chevette",
                           nomeImagem: "chevette",
                           ano: "1980",
                           km: "5000", preco: 45.000)
        
        
        self.arrayCarros.append(carro1)
        self.arrayCarros.append(carro2)
        self.arrayCarros.append(carro3)
        
        self.carrosTableView.register(UINib(nibName: "CarroTableCell", bundle: nil),
                                      forCellReuseIdentifier: "CarroTableCell")
        
        
        self.carrosTableView.delegate = self
        self.carrosTableView.dataSource = self
        
        
    }

}

extension ListaCarrosVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return self.arrayCarros.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell: CarroTableCell = tableView.dequeueReusableCell(withIdentifier: "CarroTableCell",
                                                                 for: indexPath) as! CarroTableCell
        
        
        cell.configCell(carro: self.arrayCarros[indexPath.row])
       
//        cell.configCell(nome: self.arrayCarros[indexPath.row], imagem: "fusca")
        return cell
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("didSelectRowAt")
        print(indexPath.row)
        
        let carroSelecionado: Carro = self.arrayCarros[indexPath.row]
        
        self.performSegue(withIdentifier: "DetalheVC",
                          sender: carroSelecionado)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc: DetalheVC? = segue.destination as? DetalheVC
        
        if let _vc = vc {
            _vc.carro = sender as? Carro
        }
    }
    
}


