//
//  CadastraCarroVC.swift
//  TableviewCarros
//
//  Created by Wanderley Marcussi on 23/05/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class CadastraCarroVC: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var anoTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var precoTextField: UITextField!
    @IBOutlet weak var imagemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func voltar(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func cadastrar(_ sender: UIButton) {
        
        let carro = Carro(nome: nomeTextField.text!, nomeImagem: imagemTextField.text!, ano: anoTextField.text!, km: kmTextField.text!, preco: Float(precoTextField.text!) as! Float)
      
        CarroManager.shared.adicionaCarro(carro: carro)
        self.dismiss(animated: true )
        
//        performSegue(withIdentifier: "mostraLista", sender: carro)
//        
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        if let listaCarroVC = segue.destination as? ListaCarrosVC, segue.identifier == "mostraLista" {
            
            // ListaCarrosVC.
        
        
    }
    
    
}
