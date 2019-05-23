//
//  CarroTableCell.swift
//  TableViewCarros
//
//  Created by Digital House on 21/05/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class CarroTableCell: UITableViewCell {

    @IBOutlet weak var nomeCarro: UILabel!
    @IBOutlet weak var imagemCarro: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configCell(nome: String, imagem: String){
        
        self.nomeCarro.text = nome
        self.imagemCarro.image = UIImage(named: imagem)
        
        //    .text = imagem
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    
    
    
    
}
