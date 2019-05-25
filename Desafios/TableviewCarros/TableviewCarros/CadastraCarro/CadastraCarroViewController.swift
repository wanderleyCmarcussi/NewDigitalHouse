//
//  CadastraCarroViewController.swift
//  TableviewCarros
//
//  Created by Digital House on 23/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class CadastraCarroViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var anoTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var precoTextField: UITextField!
    @IBOutlet weak var imagensTableView: UITableView!
    
    @IBOutlet weak var imagemCarroLabel: UILabel!
    
    var imagens: [String] = ["chevette","fusca","palio"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagensTableView.delegate = self
        self.imagensTableView.dataSource = self
    }
    
    @IBAction func voltar(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func cadastrar(_ sender: UIButton) {

        let carro = Carro(
            nome: nomeTextField.text!,
            nomeImagem: imagemCarroLabel.text!,
            ano: anoTextField.text!,
            km: kmTextField.text!,
            preco: Float(precoTextField.text!)!)
        
        //CarroManager.shared.adicionaCarro(carro: carro)
        VeiculoManager.shared.adicionaVeiculo(veiculo: carro)
        
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
