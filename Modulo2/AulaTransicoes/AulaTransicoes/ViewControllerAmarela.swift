//
//  ViewControllerAmarela.swift
//  AulaTransicoes
//
//  Created by Digital House on 16/05/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class ViewControllerAmarela: UIViewController {

    @IBOutlet weak var nomeLabel: UILabel!
    var nome: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nomeLabel.text = self.nome

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Voltar(_ sender: UIButton) {
    
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

   //@IBOutlet weak var nomeLabel: UILabel!
}
