//
//  ViewController.swift
//  Proyecto1
//
//  Created by Maria Lacayo on 2/15/20.
//  Copyright © 2020 dwim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter: Int = 0
    
    //@ es para palabra reservada
    //IB interface builder oulet
    //weak en meroria desaparece cuando se cierra la llave
    // var por que es variable
    // nombre del Oullet
    // UIButton el tipo de dato
    // ! visualmente ya existe el boton, lo afirmas
    @IBOutlet weak var clickOutlet: UIButton!
    @IBOutlet weak var labelOulet: UILabel!
    //override es para sobre escribir el método heredado
    override func viewDidLoad() {
        //super ejecuta el código en la clase padre
        super.viewDidLoad()
        //punto es para decir que es un enum .purple
        view.backgroundColor = .white
        //para acceder a kas propiedades se uta layer
        clickOutlet.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    
    //@ es para palabra reservada
    //IB interface builder action
    //_ esconde el parametro
    // sender: UIButton es que va a recibir un uibutton
    @IBAction func click(_ sender: UIButton) {
        self.counter += 1
        labelOulet.text = "Click \(self.counter)"
        
        if counter <= 10{
            print("Click \(self.counter)!")
        }else{
            if (counter%2)==0{
                clickOutlet.backgroundColor = .magenta
                labelOulet.textColor = .darkGray
            }else{
                clickOutlet.backgroundColor = .purple
                labelOulet.textColor = .gray
            }
            
        }
    }
    

}

