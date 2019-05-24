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
    
    var arrayCarros: [Carro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.carrosTableView.register(UINib(nibName: "CarroTableCell", bundle: nil),
                                      forCellReuseIdentifier: "CarroTableCell")
        
        
        self.carrosTableView.delegate = self
        self.carrosTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.atualizaTabela()
    }
    
    func atualizaTabela() {
        self.arrayCarros = CarroManager.shared.getCarros()
        self.carrosTableView.reloadData()
    }

}

extension ListaCarrosVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return self.arrayCarros.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell: CarroTableCell = tableView.dequeueReusableCell(withIdentifier: "CarroTableCell",
                                                                 for: indexPath) as! CarroTableCell
        
        
        cell.configCell(carro: self.arrayCarros[indexPath.row])
       
        return cell
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("didSelectRowAt")
        print(indexPath.row)
        
        let carroSelecionado: Carro = self.arrayCarros[indexPath.row]
        
        self.performSegue(withIdentifier: "DetalheVC",
                          sender: carroSelecionado)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            CarroManager.shared.deletaCarro(index: indexPath.row)
            self.atualizaTabela()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let detalheVC: DetalheVC = segue.destination as? DetalheVC {
            detalheVC.carro = sender as? Carro
        }
 
    }

}


