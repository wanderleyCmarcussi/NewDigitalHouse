//
//  CadastroMotoViewController.swift
//  TableviewCarros
//
//  Created by Wanderley Marcussi on 24/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

//import Foundation

import UIKit

class CadastraMotoViewController: UIViewController {
    


    
    var imagensMotos: [String] = ["esportivaYamaha","esportivaHonda","esportivaBMW", "estradeiraYamaha","estradeiraHonda","estradeiraBMW"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagensTableView.delegate = self
        self.imagensTableView.dataSource = self
    }
    
    @IBAction func voltar(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func cadastrarMoto(_ sender: UIButton) {
        
        let motto = Moto(modelo: <#T##String#>, modeloImagem: <#T##String#>, tipo: <#T##String#>, preco: <#T##Float#>
            
            
            
            modelo: nomeTextField.text!,
            nomeImagem: imagemCarroLabel.text!,
            ano: anoTextField.text!,
            km: kmTextField.text!,
            preco: Float(precoTextField.text!)!)
        
        CarroManager.shared.adicionaCarro(carro: carro)
        
        self.dismiss(animated: true)
    }
}

extension CadastraCarroViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imagemCell", for: indexPath)
        cell.textLabel?.text = self.imagens[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.imagemCarroLabel.text = self.imagens[indexPath.row]
    }
    
}
