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
    
    var tipoMoto: String = ""
    
    @IBOutlet weak var tipoMotoSelecionada: UISegmentedControl!
    
    @IBOutlet weak var imagemMotoLabel: UILabel!
    
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var precoTextField: UITextField!
    
    @IBOutlet weak var nomeImagemTableView: UITableView!
    var imagensMotos: [String] = ["esportivaYamaha","esportivaHonda","esportivaBMW", "estradeiraYamaha","estradeiraHonda","estradeiraBMW"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nomeImagemTableView.delegate = self
        self.nomeImagemTableView.dataSource = self
        self.tipoMotoSelecionada.selectedSegmentIndex = -1
    }
    
    @IBAction func voltar(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func cadastrarMoto(_ sender: UIButton) {
        
        let moto = Moto(
            nome: nomeTextField.text!,
            nomeImagem: imagemMotoLabel.text!,
            ano: " ",
            km: " ",
            preco: Float(precoTextField.text!)!,
            tipo: tipoMoto)

        self.dismiss(animated: true)
    }
    
    @IBAction func tipoMotoSegmented(_ sender: UISegmentedControl) {
    
    if tipoMotoSegmented.selectedSegmentIndex = 0 {
    self.tipoMoto = "E"
    } else {
    self.tipoMoto = "A"
    }
    
    
}

extension CadastraMotoViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imagensMotos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imagemCell", for: indexPath)
        cell.textLabel?.text = self.imagensMotos[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.imagemMotoLabel.text = self.imagensMotos[indexPath.row]
    }
    
}
}
