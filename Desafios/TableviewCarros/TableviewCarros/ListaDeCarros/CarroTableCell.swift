//
//  CarroTableCell.swift
//  TableviewCarros
//
//  Created by Felipe Silva on 5/21/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import UIKit

class CarroTableCell: UITableViewCell {

    @IBOutlet weak var nomeCarro: UILabel!
    @IBOutlet weak var imagemCarro: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configCell(carro: Carro) {
        
        self.nomeCarro.text = carro.nome
        
        if let  _imagemNome = carro.nomeImagem {
            self.imagemCarro.image = UIImage(named: _imagemNome)
        }
        
    }
    
}
