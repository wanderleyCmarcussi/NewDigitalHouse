//
//  ViewController.swift
//  TableViewCarros
//
//  Created by Digital House on 21/05/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class ListaCarrosVC: UIViewController {

    @IBOutlet weak var carrosTableView: UITableView!
    
    // var arrayCarros : [String] = ["fusca", "monza", "chevete"]
    var arrayCarros: [Carro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let carro1 : Carro =
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.carrosTableView.register(UINib(nibName: "CarroTableCell", bundle: nil), forCellReuseIdentifier: "CarroTableCell")
        
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
        
        //let cell: CarroTableCell = tableView.dequeueReusableCell(withIdentifier: "CarroTableCell", for: indexPath) as! CarroTableCell
   
        let cell: CarroTableCell = tableView.dequeueReusableCell(withIdentifier: "CarroTableCell", for: indexPath) as! CarroTableCell
        
       // cell.nomeCarro.text = self.arrayCarros[0] // indexPath.row
        cell.configCell(nome: self.arrayCarros[indexPath.row], imagem: "fusca")
        
    return cell
        
    }
    
    
   
    
}




