//
//  ViewController.swift
//  AulaTransicoes
//
//  Created by Digital House on 16/05/19.
//  Copyright © 2019 Digital House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var nome: String = "Marcussi"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrarViewControllerAmarela" {
        
            guard let viewControllerAmarela = segue.destination as? ViewControllerAmarela else {return}
            
            guard let nomeSender = sender as? String else {return}
            
            viewControllerAmarela.nome = nomeSender
        }
    }
    
//    @IBAction func irParaTelaAmarela(_ sender: UIButton) {
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        guard let viewControllerAmarela = storyboard.instantiateViewController(withIdentifier: "viewControllerAmarela") as? ViewControllerAmarela else { return }
//        //let viewControlerAmarela: ViewControllerAmarela = ViewControllerAmarela()
//        self.present(viewControllerAmarela, animated: true)
//    }
    
    @IBAction func irParaTelaAmarela(_ sender: UIButton) {
        //nome = nomeText.text
        performSegue(withIdentifier: "mostrarViewControllerAmarela", sender: nome)
    }
    
    
    @IBAction func nomeText(_ sender: UITextField) {
    }
    
}

