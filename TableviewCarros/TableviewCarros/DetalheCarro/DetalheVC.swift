//
//  DetalheVC.swift
//  TableviewCarros
//
//  Created by Felipe Silva on 5/21/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class DetalheVC: UIViewController {
    
    
    @IBOutlet weak var imagemCarro: UIImageView!
    @IBOutlet weak var nomeCarro: UILabel!
    @IBOutlet weak var anoCarro: UILabel!
    @IBOutlet weak var kmCarro: UILabel!
    @IBOutlet weak var precoCarro: UILabel!
    
    var carro: Carro?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let _carro = self.carro {
            
            self.nomeCarro.text = _carro.nome
            self.imagemCarro.image = UIImage(named: _carro.nomeImagem ?? "")
            self.anoCarro.text = _carro.ano
            self.kmCarro.text = _carro.km
            self.precoCarro.text = String(_carro.preco ?? 0)
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clicouVoltar(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
